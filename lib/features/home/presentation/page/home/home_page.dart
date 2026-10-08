import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/features/drift/application/drift_bloc.dart';
import 'package:skydrift/features/home/presentation/page/sky_camera/sky_camera_page.dart';
import 'package:skydrift/routes/typed_routes.dart';
import 'package:skydrift/theme/app_text_style.dart';

part 'widgets/home_cta.dart';
part 'widgets/analyzing_overlay.dart';
part 'widgets/sky_capture_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _onPicked(BuildContext context, XFile file) async {
    context.read<DriftBloc>().add(
      DriftEvent.analyzeCloudRequested(File(file.path)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BlocListener<DriftBloc, DriftState>(
      listenWhen: (previous, current) =>
          previous.analyzedDrift != current.analyzedDrift &&
          current.analyzedDrift.isNotEmpty,
      listener: (context, state) {
        DriftDetailRoute($extra: state.analyzedDrift).push<void>(context);
        context.read<DriftBloc>().add(const DriftEvent.driftReset());
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<DriftBloc, DriftState>(
            buildWhen: (previous, current) =>
                previous.isAnalyzing != current.isAnalyzing ||
                previous.failureMessage != current.failureMessage,
            builder: (context, state) {
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringsConstant.appTitle,
                          style: AppTextStyle.font24BoldPlusJakartaSans
                              .copyWith(color: colors.primary),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          StringsConstant.captureHint,
                          style: AppTextStyle.font14RegularInter.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        _HomeCta(
                          color: colors.primary,
                          onColor: colors.onPrimary,
                          icon: Icons.cloud_outlined,
                          title: StringsConstant.captureTheSky,
                          onTap: () => SkyCaptureSheet.show(
                            context,
                            onPicked: (file) => _onPicked(context, file),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        _HomeCta(
                          color: colors.tertiary,
                          onColor: colors.onTertiary,
                          icon: Icons.photo_library_outlined,
                          title: StringsConstant.recentDrifts,
                          subtitle: StringsConstant.gallerySubtitle,
                          onTap: () =>
                              const DriftGalleryRoute().push<void>(context),
                        ),
                        if (state.failureMessage.isNotEmpty &&
                            !state.isAnalyzing) ...[
                          SizedBox(height: 16.h),
                          Text(
                            state.failureMessage,
                            style: AppTextStyle.font14RegularInter.copyWith(
                              color: colors.error,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  if (state.isAnalyzing) const _AnalyzingOverlay(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
