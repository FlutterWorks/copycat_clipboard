import 'package:clipboard/widgets/empty.dart';
import 'package:clipboard/widgets/sheets/select_app.dart';
import 'package:copycat_base/bloc/app_config_cubit/app_config_cubit.dart';
import 'package:copycat_base/db/exclusion_rules/exclusion_rules.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universal_io/io.dart';
import 'package:window_manager/window_manager.dart';

class AppExclusionTab extends StatelessWidget {
  const AppExclusionTab({super.key});

  void deleteItem(BuildContext context, int index) {
    final cubit = context.read<AppConfigCubit>();
    final rules = cubit.exclusionRules;
    final excludedApps = [
      ...rules.apps.take(index),
      ...rules.apps.skip(index + 1)
    ];
    final updatedRules = cubit.exclusionRules.copyWith(apps: excludedApps);
    cubit.updateExclusionRule(updatedRules);
  }

  void addApp(BuildContext context) async {
    final cubit = context.read<AppConfigCubit>();
    final apps = await selectApp(context);
    if (apps.isEmpty) return;
    final excludedApps = {...apps, ...cubit.exclusionRules.apps}.toList();
    final updatedRules = cubit.exclusionRules.copyWith(apps: excludedApps);
    cubit.updateExclusionRule(updatedRules);
  }

  Future<Iterable<AppInfo>> selectApp(BuildContext context) async {
    if (Platform.isAndroid) {
      return selectAndroidApp(context);
    } else {
      return selectDesktopApp();
    }
  }

  Future<Iterable<AppInfo>> selectAndroidApp(BuildContext context) async {
    final cubit = context.read<AppConfigCubit>();
    final rules =
        cubit.exclusionRules.apps.map((a) => a.identifier ?? '').toSet();
    final app =
        await SelectInstalledAppSheet(selectedApps: rules).show(context);

    if (app == null) return [];

    final info = AppInfo(
      name: app.name,
      identifier: app.packageName,
    );
    return [info];
  }

  Future<Iterable<AppInfo>> selectDesktopApp() async {
    final List<String> ext;
    String? initialDirectory;
    if (Platform.isMacOS) {
      ext = ["app"];
    } else if (Platform.isWindows) {
      ext = ["exe"];
      initialDirectory = r"C:\Program Files";
    } else {
      ext = ["bin"];
    }
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ext,
      allowMultiple: true,
      initialDirectory: initialDirectory,
    );

    windowManager.focus();
    if (result == null || result.count == 0) return [];

    final files = result.files.map(
      (e) => AppInfo(
        name: e.name,
        path: e.path ?? '',
      ),
    );
    return files;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.add_rounded),
          title: Text(context.locale.custom_er__tile__add_app),
          dense: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          onTap: () => addApp(context),
        ),
        Expanded(
          child: BlocSelector<AppConfigCubit, AppConfigState, List<AppInfo>>(
            selector: (state) {
              switch (state) {
                case AppConfigLoaded(:final config):
                  return config.copyExclusionRules.apps;
                default:
                  return const [];
              }
            },
            builder: (context, rules) {
              if (rules.isEmpty) {
                return EmptyNote(note: context.locale.custom_er__text__no_app);
              }
              return ListView.builder(
                itemCount: rules.length,
                itemBuilder: (BuildContext context, int index) {
                  final app = rules[index];
                  return ListTile(
                    title: Text(app.name),
                    subtitle: Text(app.path ?? app.identifier ?? "-"),
                    dense: true,
                    leading: IconButton(
                      onPressed: () => deleteItem(context, index),
                      icon: const Icon(Icons.remove_circle_rounded),
                      tooltip: context.locale.custom_er__button__remove_app,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
