import 'package:copycat_base/db/clipboard_item/clipboard_item.dart';
import 'package:copycat_base/enums/clip_type.dart';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import "package:universal_io/io.dart";
import 'package:uuid/uuid.dart';

String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  String hours = twoDigits(duration.inHours);
  String minutes = twoDigits(duration.inMinutes.remainder(60));
  String seconds = twoDigits(duration.inSeconds.remainder(60));

  if (duration.inHours > 0) {
    return '$hours:$minutes:$seconds';
  } else {
    return '$minutes:$seconds';
  }
}

T clamp<T extends num>(T value, [T? min, T? max]) {
  if (min != null && value < min) return min;
  if (max != null && value > max) return max;
  return value;
}

Color? hexToColor(ClipboardItem item) {
  if (item.textCategory != TextCategory.color) return null;
  String hex = item.text!.replaceAll('#', '');

  if (hex.length == 3) {
    hex = 'FF${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
  } else if (hex.length == 6) {
    hex = 'FF$hex';
  }

  return Color(int.parse(hex, radix: 16));
}

Color? getFg(Color? bg) {
  if (bg == null) return null;
  return bg.computeLuminance() < 0.5 ? Colors.white70 : Colors.black87;
}

Future<void> screenshotAsFile(
  BuildContext context,
  DeviceScreenshot screenshot,
) async {
  final filePath = await FilePicker.platform.saveFile(
    dialogTitle: 'Save to',
    type: FileType.image,
    fileName: 'screenshot_${const Uuid().v4()}.png',
    bytes: screenshot.bytes,
  );

  if (filePath != null) {
    final file = File(filePath);

    file.writeAsBytesSync(screenshot.bytes);
  }
}

final metaKey = Platform.isMacOS ? "⌘" : "ctrl";
