import 'package:clipboard/widgets/dialogs/confirm_dialog.dart';
import 'package:clipboard/widgets/reset_password_button.dart';
import 'package:copycat_base/bloc/auth_cubit/auth_cubit.dart';
import 'package:copycat_base/constants/numbers/breakpoints.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/domain/model/auth_user/auth_user.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Future<void> deleteAccount(BuildContext context) async {
    final answer = await ConfirmDialog(
      title: context.locale.accountDeleteDialogTitle,
      message: context.locale.accountDeleteDialogDesc,
    ).show(context);

    if (answer) {
      launchUrlString('https://forms.gle/TzAvgA935h8mYP5eA');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = context.mq.size.width;
    final isPhone = Breakpoints.isMobile(width);
    final colors = context.colors;
    final content = BlocSelector<AuthCubit, AuthState, AuthUser?>(
      selector: (state) {
        return state.mapOrNull(authenticated: (state) => state.user);
      },
      builder: (context, state) {
        if (state == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Column(
          children: [
            ListTile(
              title: Text(context.locale.displayName),
              subtitle: Text(state.displayName ?? ""),
            ),
            ListTile(
              title: Text(context.locale.email),
              subtitle: Text(state.email),
            ),
            const Divider(),
            ListTile(
              title: Text(context.locale.accountSettings),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: padding16),
                child: ResetPasswordButton(iconButton: false),
              ),
            ),
            const Divider(),
            ListTile(
              title: Text(context.locale.dangerZone),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: padding16),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.person_remove_alt_1_rounded,
                    color: colors.error,
                  ),
                  onPressed: () => deleteAccount(context),
                  label: Text(context.locale.requestAccountDeletion),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.onError,
                    foregroundColor: colors.error,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(context.locale.myAccount),
      ),
      body: Align(
        alignment: isPhone ? Alignment.topCenter : Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(const Size(550, 400)),
          child: isPhone ? content : Card.outlined(child: content),
        ),
      ),
    );
  }
}
