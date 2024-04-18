import 'package:clipboard/bloc/app_config_cubit/app_config_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnableSyncSwitch extends StatelessWidget {
  const EnableSyncSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppConfigCubit, AppConfigState, bool>(
      selector: (state) {
        switch (state) {
          case AppConfigLoaded(:final config):
            return config.enableSync;
          default:
            return false;
        }
      },
      builder: (context, state) {
        return SwitchListTile(
          value: state,
          onChanged: (value) {
            context.read<AppConfigCubit>().changeSync(value);
          },
          title: const Text("Enable Sync"),
          subtitle: const Text("Keep your files updated across devices"),
        );
      },
    );
  }
}