part of '../drift_detail_page.dart';

class _SkyReadingCard extends StatelessWidget {
  const _SkyReadingCard({required this.forecast});

  final String forecast;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  StringsConstant.skyReading,
                  style: AppTextStyle.font12MediumInter.copyWith(
                    color: colors.primary,
                  ),
                ),
              ),
              const SectionInfoButton(
                title: StringsConstant.skyReadingInfoTitle,
                message: StringsConstant.skyReadingInfoBody,
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(forecast, style: AppTextStyle.font14RegularInter),
        ],
      ),
    );
  }
}
