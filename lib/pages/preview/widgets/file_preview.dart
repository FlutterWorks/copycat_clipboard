import 'package:clipboard/pages/preview/view/clip_preview_config.dart';
import 'package:clipboard/utils/clipboard_actions.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/db/clipboard_item/clipboard_item.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:copycat_base/utils/utility.dart';
import 'package:flutter/material.dart';

class FileClipPreviewCard extends StatelessWidget {
  final ClipboardItem item;
  const FileClipPreviewCard({
    super.key,
    required this.item,
  });

  void open() async {
    openFile(item);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colors = context.colors;
    final config = ClipPreviewConfig.of(context);

    return Card.filled(
      margin: EdgeInsets.zero,
      shape: config?.shape,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                TextSpan(text: item.fileName?.sub(end: 10), children: [
                  if (item.fileMimeType != null)
                    TextSpan(
                      text: "\n(${item.fileMimeType})",
                      style: textTheme.labelMedium?.copyWith(
                        color: colors.onTertiaryContainer,
                      ),
                    ),
                  if (item.fileSize != null)
                    TextSpan(
                      text: "\n${formatBytes(item.fileSize!)}",
                      style: textTheme.labelSmall?.copyWith(
                        color: colors.onTertiaryContainer,
                      ),
                    )
                ]),
                overflow: TextOverflow.fade,
                maxLines: 5,
                textAlign: TextAlign.center,
                style: textTheme.titleMedium
                    ?.copyWith(color: colors.onTertiaryContainer, height: 1.8),
              ),
              if (item.inCache) height12,
              if (item.inCache)
                ElevatedButton.icon(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: open,
                  label: Text(context.locale.preview__card__file__open),
                )
            ],
          ),
        ),
      ),
    );
  }
}
