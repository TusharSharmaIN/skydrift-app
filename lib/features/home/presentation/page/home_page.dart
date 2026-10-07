import 'package:flutter/material.dart';

import 'package:skydrift/core/constants/assets.dart';
import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/icons/app_icons.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';
import 'package:skydrift/theme/app_text_style.dart';
import 'package:skydrift/theme/base_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final config = FlavorConfig.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsConstant.homeTitle,
          style: AppTextStyle.font18SemiBoldPlusJakartaSans,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppIcons.svg(Assets.logo, size: 72.sq, color: BaseColors.primary),
              SizedBox(height: 24.h),
              Text(
                config.appName,
                textAlign: TextAlign.center,
                style: AppTextStyle.font24BoldPlusJakartaSans,
              ),
              SizedBox(height: 8.h),
              Text(
                '${StringsConstant.flavorLabel}: ${config.flavor.name}',
                style: AppTextStyle.font14RegularInter.copyWith(
                  color: BaseColors.grey1,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                config.baseUrl,
                textAlign: TextAlign.center,
                style: AppTextStyle.font12RegularInter.copyWith(
                  color: BaseColors.grey2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
