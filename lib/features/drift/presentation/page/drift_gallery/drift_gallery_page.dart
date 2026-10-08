import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/features/drift/application/drift_bloc.dart';
import 'package:skydrift/features/drift/presentation/cloud_type_copy.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';
import 'package:skydrift/routes/typed_routes.dart';
import 'package:skydrift/theme/app_text_style.dart';

part 'widgets/drift_gallery_card.dart';

class DriftGalleryPage extends StatelessWidget {
  const DriftGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsConstant.recentDrifts,
          style: AppTextStyle.font18SemiBoldPlusJakartaSans,
        ),
      ),
      body: BlocBuilder<DriftBloc, DriftState>(
        buildWhen: (previous, current) =>
            previous.isLoadingGallery != current.isLoadingGallery ||
            previous.gallery != current.gallery ||
            previous.failureMessage != current.failureMessage,
        builder: (context, state) {
          if (state.isLoadingGallery && state.gallery.isEmpty) {
            return Center(
              child: CircularProgressIndicator(color: colors.primary),
            );
          }
          if (state.gallery.isEmpty) {
            return Padding(
              padding: EdgeInsets.all(24.w),
              child: Center(
                child: Text(
                  StringsConstant.emptyGallery,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.font14RegularInter.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ),
            );
          }
          return RefreshIndicator(
            color: colors.primary,
            onRefresh: () async {
              context.read<DriftBloc>().add(
                const DriftEvent.galleryFetchRequested(),
              );
            },
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 32.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                mainAxisExtent: _DriftGalleryCard.tileHeight.h,
              ),
              itemCount: state.gallery.length,
              itemBuilder: (context, index) {
                final drift = state.gallery[index];
                return _DriftGalleryCard(
                  imageUrl: FlavorConfig.instance.resolveMediaUrl(
                    drift.imageUrl,
                  ),
                  title: drift.imaginedShape,
                  cloudType: CloudTypeCopy.englishNameOf(drift.cloudType),
                  onTap: () =>
                      DriftDetailRoute($extra: drift).push<void>(context),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
