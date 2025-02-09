import 'package:copycat_base/bloc/app_config_cubit/app_config_cubit.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleDropdownButton extends StatelessWidget {
  const LocaleDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return BlocSelector<AppConfigCubit, AppConfigState, Locale>(
      selector: (state) {
        switch (state) {
          case AppConfigLoaded(:final config):
            if (config.locale.isEmpty) return const Locale("en");
            return Locale(config.locale);
          default:
            return const Locale("en");
        }
      },
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: Material(
            color: colors.surfaceContainer,
            borderRadius: radius26,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 150),
              child: DropdownButton<Locale>(
                value: state,
                isExpanded: true,
                enableFeedback: true,
                icon: const Icon(Icons.arrow_drop_down_rounded),
                padding: const EdgeInsets.symmetric(horizontal: padding16),
                borderRadius: radius26,
                items: [
                  DropdownMenuItem(
                    value: const Locale("en"),
                    child: Text(context.locale.app__locale_en),
                  ),
                  DropdownMenuItem(
                    value: const Locale("es"),
                    child: Text(context.locale.app__locale_es),
                  ),
                  DropdownMenuItem(
                    value: const Locale("fr"),
                    child: Text(context.locale.app__locale_fr),
                  ),
                  DropdownMenuItem(
                    value: const Locale("de"),
                    child: Text(context.locale.app__locale_de),
                  ),
                  DropdownMenuItem(
                    value: const Locale("zh"),
                    child: Text(context.locale.app__locale_zh),
                  ),
                  DropdownMenuItem(
                    value: const Locale("pt"),
                    child: Text(context.locale.app__locale_pt),
                  ),
                ],
                onChanged: (locale) {
                  if (locale != null) {
                    context.read<AppConfigCubit>().changeLocale(
                          locale.languageCode,
                        );
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
