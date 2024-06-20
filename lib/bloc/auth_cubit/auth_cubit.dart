import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clipboard/common/failure.dart';
import 'package:clipboard/common/logging.dart';
import 'package:clipboard/constants/strings/route_constants.dart';
import 'package:clipboard/data/repositories/subscription.dart';
import 'package:clipboard/db/subscription/subscription.dart';
import 'package:clipboard/routes/routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@singleton
class AuthCubit extends Cubit<AuthState> {
  SupabaseClient sbClient;
  SubscriptionRepository subRepo;

  AuthCubit(
    this.sbClient,
    this.subRepo,
  ) : super(const AuthState.unknown());

  /// validate the code and return a suitable page path
  Future<String?> validateAuthCode(String code) async {
    final exchange = await sbClient.auth.exchangeCodeForSession(code);

    switch (exchange.redirectType) {
      case "passwordRecovery":
        authenticated(exchange.session, exchange.session.user);
        return RouteConstants.resetPassword;
      case _:
        logger.w("Exchange not supported. ${exchange.redirectType}");
    }
    return null;
  }

  String? get userId => sbClient.auth.currentUser?.id;

  String? get enc1Key {
    return sbClient.auth.currentUser?.userMetadata?["enc1"];
  }

  Session? get session => sbClient.auth.currentSession;

  Subscription? get subscription =>
      state.whenOrNull(authenticated: (_, __, sub) => sub);

  checkForAuthentication() {
    if (session != null) {
      authenticated(
        session!,
        session!.user,
      );
    } else {
      unauthenticated(authFailure);
    }
  }

  /// enc1 is always encrypted with enc2 key.
  Future<void> setupEncryption(String enc2KeyId, String enc1) async {
    await state.mapOrNull(authenticated: (authState) async {
      final result = await sbClient.auth.updateUser(UserAttributes(data: {
        "enc1": enc1,
        "enc2KeyId": enc2KeyId,
      }));
      if (result.user != null) {
        emit(authState.copyWith(user: result.user!));
      }
    });
  }

  Future<Failure?> applyPromoCode(String code) async {
    final result = await subRepo.applyPromoCoupon(code);
    return result.fold((l) => l, (r) {
      emit(AuthState.authenticated(
        session: session!,
        user: session!.user,
        subscription: r,
      ));
      return null;
    });
  }

  Future<void> fetchSubscription() async {
    if (session != null) {
      await authenticated(session!, session!.user);
    }
  }

  Future<void> setupAnalytics() async {
    final user = session!.user;
    await analytics.setUserId(id: user.id);
    await analytics.setUserProperty(
      name: "name",
      value: user.userMetadata?["display_name"],
    );
    await analytics.setUserProperty(
      name: "email",
      value: user.email,
    );
  }

  Future<void> authenticated(Session session, User user) async {
    final subResult = await subRepo.get();

    final sub = subResult.fold(
      (l) {
        logger.e(l);
        return Subscription.free(user.id);
      },
      (r) => r ?? Subscription.free(user.id),
    );

    setupAnalytics();

    emit(AuthState.authenticated(
      session: session,
      user: user,
      subscription: sub,
    ));
  }

  void unauthenticated(Failure failure) {
    emit(AuthState.unauthenticated(failure));
  }

  Future<void> logout([SignOutScope? scope]) async {
    emit(const AuthState.authenticating());

    await sbClient.auth.signOut(scope: scope ?? SignOutScope.local);

    emit(const AuthState.unauthenticated());
  }
}
