// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncManagerStateCopyWith<$Res> {
  factory $SyncManagerStateCopyWith(
          SyncManagerState value, $Res Function(SyncManagerState) then) =
      _$SyncManagerStateCopyWithImpl<$Res, SyncManagerState>;
}

/// @nodoc
class _$SyncManagerStateCopyWithImpl<$Res, $Val extends SyncManagerState>
    implements $SyncManagerStateCopyWith<$Res> {
  _$SyncManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownSyncStateImplCopyWith<$Res> {
  factory _$$UnknownSyncStateImplCopyWith(_$UnknownSyncStateImpl value,
          $Res Function(_$UnknownSyncStateImpl) then) =
      __$$UnknownSyncStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownSyncStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$UnknownSyncStateImpl>
    implements _$$UnknownSyncStateImplCopyWith<$Res> {
  __$$UnknownSyncStateImplCopyWithImpl(_$UnknownSyncStateImpl _value,
      $Res Function(_$UnknownSyncStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownSyncStateImpl implements UnknownSyncState {
  const _$UnknownSyncStateImpl();

  @override
  String toString() {
    return 'SyncManagerState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownSyncStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownSyncState implements SyncManagerState {
  const factory UnknownSyncState() = _$UnknownSyncStateImpl;
}

/// @nodoc
abstract class _$$CheckingSyncStateImplCopyWith<$Res> {
  factory _$$CheckingSyncStateImplCopyWith(_$CheckingSyncStateImpl value,
          $Res Function(_$CheckingSyncStateImpl) then) =
      __$$CheckingSyncStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingSyncStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$CheckingSyncStateImpl>
    implements _$$CheckingSyncStateImplCopyWith<$Res> {
  __$$CheckingSyncStateImplCopyWithImpl(_$CheckingSyncStateImpl _value,
      $Res Function(_$CheckingSyncStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingSyncStateImpl implements CheckingSyncState {
  const _$CheckingSyncStateImpl();

  @override
  String toString() {
    return 'SyncManagerState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingSyncStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class CheckingSyncState implements SyncManagerState {
  const factory CheckingSyncState() = _$CheckingSyncStateImpl;
}

/// @nodoc
abstract class _$$SyncCheckFailedStateImplCopyWith<$Res> {
  factory _$$SyncCheckFailedStateImplCopyWith(_$SyncCheckFailedStateImpl value,
          $Res Function(_$SyncCheckFailedStateImpl) then) =
      __$$SyncCheckFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SyncCheckFailedStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$SyncCheckFailedStateImpl>
    implements _$$SyncCheckFailedStateImplCopyWith<$Res> {
  __$$SyncCheckFailedStateImplCopyWithImpl(_$SyncCheckFailedStateImpl _value,
      $Res Function(_$SyncCheckFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SyncCheckFailedStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SyncCheckFailedStateImpl implements SyncCheckFailedState {
  const _$SyncCheckFailedStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SyncManagerState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncCheckFailedStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncCheckFailedStateImplCopyWith<_$SyncCheckFailedStateImpl>
      get copyWith =>
          __$$SyncCheckFailedStateImplCopyWithImpl<_$SyncCheckFailedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SyncCheckFailedState implements SyncManagerState {
  const factory SyncCheckFailedState(final Failure failure) =
      _$SyncCheckFailedStateImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SyncCheckFailedStateImplCopyWith<_$SyncCheckFailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncingStateImplCopyWith<$Res> {
  factory _$$SyncingStateImplCopyWith(
          _$SyncingStateImpl value, $Res Function(_$SyncingStateImpl) then) =
      __$$SyncingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int progress, int total});
}

/// @nodoc
class __$$SyncingStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$SyncingStateImpl>
    implements _$$SyncingStateImplCopyWith<$Res> {
  __$$SyncingStateImplCopyWithImpl(
      _$SyncingStateImpl _value, $Res Function(_$SyncingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? total = null,
  }) {
    return _then(_$SyncingStateImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SyncingStateImpl implements SyncingState {
  const _$SyncingStateImpl({required this.progress, required this.total});

  @override
  final int progress;
  @override
  final int total;

  @override
  String toString() {
    return 'SyncManagerState.syncing(progress: $progress, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncingStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncingStateImplCopyWith<_$SyncingStateImpl> get copyWith =>
      __$$SyncingStateImplCopyWithImpl<_$SyncingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return syncing(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return syncing?.call(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing(progress, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return syncing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return syncing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing(this);
    }
    return orElse();
  }
}

abstract class SyncingState implements SyncManagerState {
  const factory SyncingState(
      {required final int progress,
      required final int total}) = _$SyncingStateImpl;

  int get progress;
  int get total;
  @JsonKey(ignore: true)
  _$$SyncingStateImplCopyWith<_$SyncingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartlySyncedSyncStateImplCopyWith<$Res> {
  factory _$$PartlySyncedSyncStateImplCopyWith(
          _$PartlySyncedSyncStateImpl value,
          $Res Function(_$PartlySyncedSyncStateImpl) then) =
      __$$PartlySyncedSyncStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool clipboard, bool collections});
}

/// @nodoc
class __$$PartlySyncedSyncStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$PartlySyncedSyncStateImpl>
    implements _$$PartlySyncedSyncStateImplCopyWith<$Res> {
  __$$PartlySyncedSyncStateImplCopyWithImpl(_$PartlySyncedSyncStateImpl _value,
      $Res Function(_$PartlySyncedSyncStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clipboard = null,
    Object? collections = null,
  }) {
    return _then(_$PartlySyncedSyncStateImpl(
      clipboard: null == clipboard
          ? _value.clipboard
          : clipboard // ignore: cast_nullable_to_non_nullable
              as bool,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PartlySyncedSyncStateImpl implements PartlySyncedSyncState {
  const _$PartlySyncedSyncStateImpl(
      {this.clipboard = false, this.collections = false});

  @override
  @JsonKey()
  final bool clipboard;
  @override
  @JsonKey()
  final bool collections;

  @override
  String toString() {
    return 'SyncManagerState.partlySynced(clipboard: $clipboard, collections: $collections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartlySyncedSyncStateImpl &&
            (identical(other.clipboard, clipboard) ||
                other.clipboard == clipboard) &&
            (identical(other.collections, collections) ||
                other.collections == collections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clipboard, collections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartlySyncedSyncStateImplCopyWith<_$PartlySyncedSyncStateImpl>
      get copyWith => __$$PartlySyncedSyncStateImplCopyWithImpl<
          _$PartlySyncedSyncStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return partlySynced(clipboard, collections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return partlySynced?.call(clipboard, collections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (partlySynced != null) {
      return partlySynced(clipboard, collections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return partlySynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return partlySynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (partlySynced != null) {
      return partlySynced(this);
    }
    return orElse();
  }
}

abstract class PartlySyncedSyncState implements SyncManagerState {
  const factory PartlySyncedSyncState(
      {final bool clipboard,
      final bool collections}) = _$PartlySyncedSyncStateImpl;

  bool get clipboard;
  bool get collections;
  @JsonKey(ignore: true)
  _$$PartlySyncedSyncStateImplCopyWith<_$PartlySyncedSyncStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipboardSyncedSyncStateImplCopyWith<$Res> {
  factory _$$ClipboardSyncedSyncStateImplCopyWith(
          _$ClipboardSyncedSyncStateImpl value,
          $Res Function(_$ClipboardSyncedSyncStateImpl) then) =
      __$$ClipboardSyncedSyncStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int added, int updated, bool silent});
}

/// @nodoc
class __$$ClipboardSyncedSyncStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$ClipboardSyncedSyncStateImpl>
    implements _$$ClipboardSyncedSyncStateImplCopyWith<$Res> {
  __$$ClipboardSyncedSyncStateImplCopyWithImpl(
      _$ClipboardSyncedSyncStateImpl _value,
      $Res Function(_$ClipboardSyncedSyncStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added = null,
    Object? updated = null,
    Object? silent = null,
  }) {
    return _then(_$ClipboardSyncedSyncStateImpl(
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int,
      silent: null == silent
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClipboardSyncedSyncStateImpl implements ClipboardSyncedSyncState {
  const _$ClipboardSyncedSyncStateImpl(
      {this.added = 0, this.updated = 0, this.silent = false});

  @override
  @JsonKey()
  final int added;
  @override
  @JsonKey()
  final int updated;
  @override
  @JsonKey()
  final bool silent;

  @override
  String toString() {
    return 'SyncManagerState.clipboardSynced(added: $added, updated: $updated, silent: $silent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipboardSyncedSyncStateImpl &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.silent, silent) || other.silent == silent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, added, updated, silent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipboardSyncedSyncStateImplCopyWith<_$ClipboardSyncedSyncStateImpl>
      get copyWith => __$$ClipboardSyncedSyncStateImplCopyWithImpl<
          _$ClipboardSyncedSyncStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return clipboardSynced(added, updated, silent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return clipboardSynced?.call(added, updated, silent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (clipboardSynced != null) {
      return clipboardSynced(added, updated, silent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return clipboardSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return clipboardSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (clipboardSynced != null) {
      return clipboardSynced(this);
    }
    return orElse();
  }
}

abstract class ClipboardSyncedSyncState implements SyncManagerState {
  const factory ClipboardSyncedSyncState(
      {final int added,
      final int updated,
      final bool silent}) = _$ClipboardSyncedSyncStateImpl;

  int get added;
  int get updated;
  bool get silent;
  @JsonKey(ignore: true)
  _$$ClipboardSyncedSyncStateImplCopyWith<_$ClipboardSyncedSyncStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipCollectionSyncedSyncStateImplCopyWith<$Res> {
  factory _$$ClipCollectionSyncedSyncStateImplCopyWith(
          _$ClipCollectionSyncedSyncStateImpl value,
          $Res Function(_$ClipCollectionSyncedSyncStateImpl) then) =
      __$$ClipCollectionSyncedSyncStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int added, int updated, bool silent});
}

/// @nodoc
class __$$ClipCollectionSyncedSyncStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res,
        _$ClipCollectionSyncedSyncStateImpl>
    implements _$$ClipCollectionSyncedSyncStateImplCopyWith<$Res> {
  __$$ClipCollectionSyncedSyncStateImplCopyWithImpl(
      _$ClipCollectionSyncedSyncStateImpl _value,
      $Res Function(_$ClipCollectionSyncedSyncStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added = null,
    Object? updated = null,
    Object? silent = null,
  }) {
    return _then(_$ClipCollectionSyncedSyncStateImpl(
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int,
      silent: null == silent
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClipCollectionSyncedSyncStateImpl
    implements ClipCollectionSyncedSyncState {
  const _$ClipCollectionSyncedSyncStateImpl(
      {this.added = 0, this.updated = 0, this.silent = false});

  @override
  @JsonKey()
  final int added;
  @override
  @JsonKey()
  final int updated;
  @override
  @JsonKey()
  final bool silent;

  @override
  String toString() {
    return 'SyncManagerState.collectionSynced(added: $added, updated: $updated, silent: $silent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipCollectionSyncedSyncStateImpl &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.silent, silent) || other.silent == silent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, added, updated, silent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipCollectionSyncedSyncStateImplCopyWith<
          _$ClipCollectionSyncedSyncStateImpl>
      get copyWith => __$$ClipCollectionSyncedSyncStateImplCopyWithImpl<
          _$ClipCollectionSyncedSyncStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return collectionSynced(added, updated, silent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return collectionSynced?.call(added, updated, silent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (collectionSynced != null) {
      return collectionSynced(added, updated, silent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return collectionSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return collectionSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (collectionSynced != null) {
      return collectionSynced(this);
    }
    return orElse();
  }
}

abstract class ClipCollectionSyncedSyncState implements SyncManagerState {
  const factory ClipCollectionSyncedSyncState(
      {final int added,
      final int updated,
      final bool silent}) = _$ClipCollectionSyncedSyncStateImpl;

  int get added;
  int get updated;
  bool get silent;
  @JsonKey(ignore: true)
  _$$ClipCollectionSyncedSyncStateImplCopyWith<
          _$ClipCollectionSyncedSyncStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncedStateImplCopyWith<$Res> {
  factory _$$SyncedStateImplCopyWith(
          _$SyncedStateImpl value, $Res Function(_$SyncedStateImpl) then) =
      __$$SyncedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime lastSynced, bool refreshLocalCache});
}

/// @nodoc
class __$$SyncedStateImplCopyWithImpl<$Res>
    extends _$SyncManagerStateCopyWithImpl<$Res, _$SyncedStateImpl>
    implements _$$SyncedStateImplCopyWith<$Res> {
  __$$SyncedStateImplCopyWithImpl(
      _$SyncedStateImpl _value, $Res Function(_$SyncedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastSynced = null,
    Object? refreshLocalCache = null,
  }) {
    return _then(_$SyncedStateImpl(
      lastSynced: null == lastSynced
          ? _value.lastSynced
          : lastSynced // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshLocalCache: null == refreshLocalCache
          ? _value.refreshLocalCache
          : refreshLocalCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SyncedStateImpl implements SyncedState {
  const _$SyncedStateImpl(
      {required this.lastSynced, this.refreshLocalCache = false});

  @override
  final DateTime lastSynced;
  @override
  @JsonKey()
  final bool refreshLocalCache;

  @override
  String toString() {
    return 'SyncManagerState.synced(lastSynced: $lastSynced, refreshLocalCache: $refreshLocalCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncedStateImpl &&
            (identical(other.lastSynced, lastSynced) ||
                other.lastSynced == lastSynced) &&
            (identical(other.refreshLocalCache, refreshLocalCache) ||
                other.refreshLocalCache == refreshLocalCache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastSynced, refreshLocalCache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncedStateImplCopyWith<_$SyncedStateImpl> get copyWith =>
      __$$SyncedStateImplCopyWithImpl<_$SyncedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() checking,
    required TResult Function(Failure failure) failed,
    required TResult Function(int progress, int total) syncing,
    required TResult Function(bool clipboard, bool collections) partlySynced,
    required TResult Function(int added, int updated, bool silent)
        clipboardSynced,
    required TResult Function(int added, int updated, bool silent)
        collectionSynced,
    required TResult Function(DateTime lastSynced, bool refreshLocalCache)
        synced,
  }) {
    return synced(lastSynced, refreshLocalCache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? checking,
    TResult? Function(Failure failure)? failed,
    TResult? Function(int progress, int total)? syncing,
    TResult? Function(bool clipboard, bool collections)? partlySynced,
    TResult? Function(int added, int updated, bool silent)? clipboardSynced,
    TResult? Function(int added, int updated, bool silent)? collectionSynced,
    TResult? Function(DateTime lastSynced, bool refreshLocalCache)? synced,
  }) {
    return synced?.call(lastSynced, refreshLocalCache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? checking,
    TResult Function(Failure failure)? failed,
    TResult Function(int progress, int total)? syncing,
    TResult Function(bool clipboard, bool collections)? partlySynced,
    TResult Function(int added, int updated, bool silent)? clipboardSynced,
    TResult Function(int added, int updated, bool silent)? collectionSynced,
    TResult Function(DateTime lastSynced, bool refreshLocalCache)? synced,
    required TResult orElse(),
  }) {
    if (synced != null) {
      return synced(lastSynced, refreshLocalCache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownSyncState value) unknown,
    required TResult Function(CheckingSyncState value) checking,
    required TResult Function(SyncCheckFailedState value) failed,
    required TResult Function(SyncingState value) syncing,
    required TResult Function(PartlySyncedSyncState value) partlySynced,
    required TResult Function(ClipboardSyncedSyncState value) clipboardSynced,
    required TResult Function(ClipCollectionSyncedSyncState value)
        collectionSynced,
    required TResult Function(SyncedState value) synced,
  }) {
    return synced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownSyncState value)? unknown,
    TResult? Function(CheckingSyncState value)? checking,
    TResult? Function(SyncCheckFailedState value)? failed,
    TResult? Function(SyncingState value)? syncing,
    TResult? Function(PartlySyncedSyncState value)? partlySynced,
    TResult? Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult? Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult? Function(SyncedState value)? synced,
  }) {
    return synced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownSyncState value)? unknown,
    TResult Function(CheckingSyncState value)? checking,
    TResult Function(SyncCheckFailedState value)? failed,
    TResult Function(SyncingState value)? syncing,
    TResult Function(PartlySyncedSyncState value)? partlySynced,
    TResult Function(ClipboardSyncedSyncState value)? clipboardSynced,
    TResult Function(ClipCollectionSyncedSyncState value)? collectionSynced,
    TResult Function(SyncedState value)? synced,
    required TResult orElse(),
  }) {
    if (synced != null) {
      return synced(this);
    }
    return orElse();
  }
}

abstract class SyncedState implements SyncManagerState {
  const factory SyncedState(
      {required final DateTime lastSynced,
      final bool refreshLocalCache}) = _$SyncedStateImpl;

  DateTime get lastSynced;
  bool get refreshLocalCache;
  @JsonKey(ignore: true)
  _$$SyncedStateImplCopyWith<_$SyncedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
