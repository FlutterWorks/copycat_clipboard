import 'package:clipboard/utils/utility.dart';
import 'package:clipboard/widgets/clip_item/clip_meta_info.dart';
import 'package:copycat_base/constants/font_variations.dart';
import 'package:copycat_base/constants/strings/route_constants.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/db/clipboard_item/clipboard_item.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrimaryHoverAction extends StatelessWidget {
  final ClipboardItem item;
  final bool hovered;

  const PrimaryHoverAction({
    super.key,
    required this.item,
    required this.hovered,
  });

  Future<void> editClip(BuildContext context) async {
    context.pushNamed(RouteConstants.preview, pathParameters: {
      "id": item.id.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    Widget child;
    if (!hovered) {
      final meta = ClipMetaInfo.of(context);
      if (meta == null || item.encrypted) return const SizedBox.shrink();
      child = Card.filled(
        margin: const EdgeInsets.only(right: padding8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding4),
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text(
                keyboardShortcut(key: meta.index.toString()),
                textAlign: TextAlign.center,
                style: textTheme.labelSmall?.copyWith(
                  fontVariations: fontVarW600,
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      child = SizedBox.square(
        child: Focus(
          canRequestFocus: false,
          descendantsAreTraversable: false,
          child: IconButton(
            onPressed: () => editClip(context),
            iconSize: 22,
            tooltip: context.locale.app__preview,
            icon: const Icon(Icons.edit),
          ),
        ),
      );
    }
    return child;
  }
}
