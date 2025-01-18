import 'package:clipboard/utils/clipboard_actions.dart';
import 'package:clipboard/utils/utility.dart';
import 'package:copycat_base/utils/debounce.dart';
import 'package:copycat_base/utils/utility.dart';
import 'package:flutter/material.dart';

class PasteFAB extends StatelessWidget {
  const PasteFAB({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 350);
    return FloatingActionButton(
      onPressed: () => debouncer(() => pasteContent(context)),
      tooltip:
          isDesktopPlatform ? "Paste • ${keyboardShortcut(key: 'V')}" : 'Paste',
      heroTag: "paste-fab",
      child: const Icon(Icons.content_paste_go_rounded),
    );
  }
}
