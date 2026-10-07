import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:skydrift/core/constants/assets.dart';
import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/icons/app_icons.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/routes/app_routes.dart';
import 'package:skydrift/theme/app_text_style.dart';
import 'package:skydrift/theme/base_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 1400), _goHome);
  }

  void _goHome() {
    if (!mounted) return;
    context.go(AppRoutes.home);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIcons.svg(Assets.logo, size: 88.sq),
            SizedBox(height: 24.h),
            Text(
              StringsConstant.appTitle,
              style: AppTextStyle.font20SemiBoldPlusJakartaSans.copyWith(
                color: BaseColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
