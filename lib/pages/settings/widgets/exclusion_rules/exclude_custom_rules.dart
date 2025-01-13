import 'package:clipboard/widgets/badges.dart';
import 'package:copycat_base/constants/strings/route_constants.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_pro/widgets/subscription/subscription_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExcludeCustomRules extends StatelessWidget {
  final bool enabled;
  const ExcludeCustomRules({
    super.key,
    this.enabled = true,
  });

  Future<void> navigateTo(BuildContext context) async {
    context.goNamed(RouteConstants.customExclusionRules);
  }

  @override
  Widget build(BuildContext context) {
    return SubscriptionBuilder(builder: (context, subscription) {
      final hasAccess =
          (subscription != null && subscription.customExclusionRules);
      return ListTile(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(context.locale.settings__tile__cer_title),
            width8,
            const ProBadge(),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
          ),
        ),
        subtitle: Text(
          context.locale.settings__tile__cer_subtitle,
        ),
        enabled: enabled && hasAccess,
        trailing: const Icon(Icons.keyboard_arrow_right_rounded),
        onTap: hasAccess && enabled ? () => navigateTo(context) : null,
      );
    });
  }
}
