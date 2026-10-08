import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/di/injection.dart';
import 'package:skydrift/features/home/application/sky_camera_bloc.dart';
import 'package:skydrift/theme/app_text_style.dart';

part 'widgets/shutter_button.dart';

class SkyCameraPage extends StatelessWidget {
  const SkyCameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator.get<SkyCameraBloc>()
            ..add(const SkyCameraEvent.cameraStarted()),
      child: const _SkyCameraView(),
    );
  }
}

class _SkyCameraView extends StatelessWidget {
  const _SkyCameraView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BlocListener<SkyCameraBloc, SkyCameraState>(
      listenWhen: (previous, current) =>
          previous.capturedPath != current.capturedPath &&
          current.capturedPath.isNotEmpty,
      listener: (context, state) {
        Navigator.of(context).pop(XFile(state.capturedPath));
      },
      child: Scaffold(
        backgroundColor: colors.surface,
        body: BlocBuilder<SkyCameraBloc, SkyCameraState>(
          buildWhen: (previous, current) =>
              previous.isReady != current.isReady ||
              previous.isBusy != current.isBusy ||
              previous.canFlip != current.canFlip ||
              previous.errorMessage != current.errorMessage,
          builder: (context, state) {
            final controller = context.read<SkyCameraBloc>().previewController;
            final showPreview =
                state.isReady &&
                controller != null &&
                controller.value.isInitialized;

            return Stack(
              fit: StackFit.expand,
              children: [
                if (showPreview)
                  FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: controller.value.previewSize?.height ?? 1,
                      height: controller.value.previewSize?.width ?? 1,
                      child: CameraPreview(controller),
                    ),
                  )
                else
                  ColoredBox(
                    color: colors.surface,
                    child: Center(
                      child: state.errorMessage.isEmpty
                          ? CircularProgressIndicator(color: colors.primary)
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.w),
                              child: Text(
                                state.errorMessage,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.font14RegularInter.copyWith(
                                  color: colors.onSurface,
                                ),
                              ),
                            ),
                    ),
                  ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 16.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(
                              Icons.close,
                              color: showPreview
                                  ? colors.onPrimary
                                  : colors.onSurface,
                            ),
                          ),
                        ),
                        const Spacer(),
                        if (showPreview)
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Row(
                              children: [
                                const Spacer(),
                                _ShutterButton(
                                  enabled: !state.isBusy,
                                  onPressed: () =>
                                      context.read<SkyCameraBloc>().add(
                                        const SkyCameraEvent.photoCaptureRequested(),
                                      ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: state.canFlip && !state.isBusy
                                          ? () => context.read<SkyCameraBloc>().add(
                                              const SkyCameraEvent.cameraFlipped(),
                                            )
                                          : null,
                                      icon: Icon(
                                        Icons.cameraswitch,
                                        color: colors.onPrimary,
                                        size: 28.sq,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
