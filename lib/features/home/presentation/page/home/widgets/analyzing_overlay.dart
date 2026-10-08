part of '../home_page.dart';

class _AnalyzingOverlay extends StatelessWidget {
  const _AnalyzingOverlay();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ColoredBox(
      color: colors.scrim.withValues(alpha: 0.55),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(color: colors.onPrimary),
            SizedBox(height: 16.h),
            Text(
              StringsConstant.analyzingSky,
              style: AppTextStyle.font16MediumPlusJakartaSans.copyWith(
                color: colors.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
