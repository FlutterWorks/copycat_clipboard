import 'package:clipboard/utils/clipboard_actions.dart';
import 'package:copycat_base/bloc/selected_clips_cubit/selected_clips_cubit.dart';
import 'package:copycat_base/constants/font_variations.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/db/clipboard_item/clipboard_item.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectionAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget defaultChild;
  const SelectionAppbar({
    super.key,
    required this.defaultChild,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void clearSelection(BuildContext context) {
    context.read<SelectedClipsCubit>().clear();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return BlocSelector<SelectedClipsCubit, SelectedClipsState,
        Set<ClipboardItem>>(
      selector: (state) {
        switch (state) {
          case ClipSelected(:final selectedClipIds):
            return selectedClipIds;
          case _:
            return {};
        }
      },
      builder: (context, items) {
        if (items.isNotEmpty) {
          return AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => clearSelection(context),
            ),
            centerTitle: false,
            title: Text("${items.length}"),
            scrolledUnderElevation: 0,
            titleSpacing: 0,
            titleTextStyle: textTheme.titleLarge?.copyWith(
              fontVariations: fontVarW700,
            ),
            actions: [
              IconButton(
                onPressed: () async {
                  await changeCollection(context, items.toList());
                  if (context.mounted) {
                    clearSelection(context);
                  }
                },
                tooltip: context.locale.app__change_collection,
                icon: const Icon(Icons.collections_bookmark),
              ),
              IconButton(
                onPressed: () async {
                  final done =
                      await deleteClipboardItem(context, items.toList());
                  if (done && context.mounted) {
                    clearSelection(context);
                  }
                },
                tooltip: context.locale.app__delete,
                icon: const Icon(Icons.delete),
              ),
              width12,
            ],
          );
        }
        return defaultChild;
      },
    );
  }
}
