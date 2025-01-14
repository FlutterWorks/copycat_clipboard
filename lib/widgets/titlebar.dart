import 'package:clipboard/widgets/view_buttons/app_layout_button.dart';
import 'package:clipboard/widgets/view_buttons/app_view_button.dart';
import 'package:clipboard/widgets/view_buttons/navigate_to_home.dart';
import 'package:clipboard/widgets/view_buttons/pin_to_top_button.dart';
import 'package:copycat_base/bloc/window_action_cubit/window_action_cubit.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/db/app_config/appconfig.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:copycat_base/utils/common_extension.dart';
import 'package:copycat_base/utils/utility.dart';
import 'package:copycat_base/widgets/drag_to_move_area_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universal_io/io.dart';
import 'package:window_manager/window_manager.dart';

class ResizeHandleForDockView extends StatelessWidget {
  final AppView view;
  final Widget child;
  const ResizeHandleForDockView(
      {super.key, required this.view, required this.child});

  @override
  Widget build(BuildContext context) {
    if (view == AppView.windowed) return child;
    ResizeEdge? edge = switch (view) {
      AppView.leftDocked => ResizeEdge.right,
      AppView.topDocked => ResizeEdge.bottom,
      AppView.rightDocked => ResizeEdge.left,
      AppView.bottomDocked => ResizeEdge.top,
      _ => null,
    };
    return DragToResizeArea(
      // resizeEdgeColor: Colors.red,
      enableResizeEdges: edge != null ? [edge] : null,
      child: child,
    );
  }
}

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Text(
      context.locale.app__name,
      style: textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TitlebarView extends StatelessWidget {
  final Widget child;
  const TitlebarView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobilePlatform) return child;

    final colors = context.colors;

    return BlocSelector<WindowActionCubit, WindowActionState, AppView>(
      selector: (state) {
        return state.view;
      },
      builder: (context, view) {
        final isWindowMode = view == AppView.windowed;

        final dragToMoveHandler = DragToMoveArea2(
          enabled: isWindowMode,
          child: DecoratedBox(
            decoration: BoxDecoration(color: colors.surface),
            child: SizedBox(
              height: 26,
              width: double.infinity,
              child: Row(
                children: [
                  if (!isWindowMode) const NavigationButtons(),
                  const Spacer(),
                  if (!isWindowMode) const PinToTopButton(),
                  width2,
                  const AppLayoutToggleButton(),
                  width2,
                  const AppViewButton(),
                  if (Platform.isWindows && isWindowMode)
                    WindowCaptionButton.close(
                      brightness: colors.brightness,
                      onPressed: context.windowAction?.hide,
                    ),
                ],
              ),
            ),
          ),
        );
        if (view == AppView.topDocked) {
          return ResizeHandleForDockView(
            view: view,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Expanded(child: child), dragToMoveHandler],
            ),
          );
        }
        return ResizeHandleForDockView(
          view: view,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              dragToMoveHandler,
              Expanded(
                child: child,
              )
            ],
          ),
        );
      },
    );
  }
}
