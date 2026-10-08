import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:skydrift/core/constants/assets.dart';
import 'package:skydrift/core/constants/strings_constant.dart';
import 'package:skydrift/core/icons/app_icons.dart';
import 'package:skydrift/core/utils/screen_utils.dart';
import 'package:skydrift/di/injection.dart';
import 'package:skydrift/features/splash/application/splash_bloc.dart';
import 'package:skydrift/routes/app_routes.dart';
import 'package:skydrift/theme/app_text_style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator.get<SplashBloc>()..add(const SplashEvent.splashStarted()),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BlocListener<SplashBloc, SplashState>(
      listenWhen: (previous, current) =>
          !previous.shouldGoHome && current.shouldGoHome,
      listener: (context, state) {
        context.go(AppRoutes.home);
      },
      child: Scaffold(
        backgroundColor: colors.primary,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppIcons.svg(Assets.logo, size: 88.sq),
              SizedBox(height: 24.h),
              Text(
                StringsConstant.appTitle,
                style: AppTextStyle.font20SemiBoldPlusJakartaSans.copyWith(
                  color: colors.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
