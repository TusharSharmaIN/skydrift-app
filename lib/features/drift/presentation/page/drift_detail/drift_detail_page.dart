import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';
import 'package:skydrift/features/drift/presentation/page/drift_photo_viewer/drift_photo_viewer_page.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';
import 'package:skydrift/theme/app_text_style.dart';
import 'package:skydrift/theme/base_colors.dart';

part 'widgets/detail_header.dart';
part 'widgets/sky_reading_card.dart';
part 'widgets/section_info_button.dart';

class DriftDetailPage extends StatelessWidget {
  const DriftDetailPage({super.key, required this.drift});

  final DriftEntity drift;

  void _openFullPhoto(BuildContext context, String imageUrl) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => DriftPhotoViewerPage(imageUrl: imageUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final imageUrl = FlavorConfig.instance.resolveMediaUrl(drift.imageUrl);
    final cloudName = drift.cloudType;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _DetailHeader(
            imageUrl: imageUrl,
            cloudName: cloudName,
            onOpenPhoto: () => _openFullPhoto(context, imageUrl),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringsConstant.imaginedShapeLabel,
                    style: AppTextStyle.font12MediumInter.copyWith(
                      color: colors.primary,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    drift.imaginedShape,
                    style: AppTextStyle.font24BoldPlusJakartaSans,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    cloudName,
                    style: AppTextStyle.font16SemiBoldPlusJakartaSans,
                  ),
                  SizedBox(height: 20.h),
                  _SkyReadingCard(forecast: drift.weatherForecast),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
