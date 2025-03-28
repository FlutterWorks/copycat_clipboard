import 'package:copycat_base/constants/strings/route_constants.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountDetailButton extends StatelessWidget {
  const AccountDetailButton({super.key});

  Future<void> viewAccount(BuildContext context) async {
    context.pushNamed(RouteConstants.accountDetails);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.account_circle_outlined),
      tooltip: context.locale.my_account__button__tooltip,
      onPressed: () => viewAccount(context),
    );
  }
}
