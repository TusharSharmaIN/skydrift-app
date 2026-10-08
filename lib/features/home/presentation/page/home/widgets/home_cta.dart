part of '../home_page.dart';

class _HomeCta extends StatelessWidget {
  const _HomeCta({
    required this.color,
    required this.onColor,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  final Color color;
  final Color onColor;
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
          child: Row(
            children: [
              Container(
                width: 48.sq,
                height: 48.sq,
                decoration: BoxDecoration(
                  color: colors.surface,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: colors.primary),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: subtitle == null
                    ? Text(
                        title,
                        style: AppTextStyle.font18BoldPlusJakartaSans.copyWith(
                          color: onColor,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppTextStyle.font18BoldPlusJakartaSans
                                .copyWith(color: onColor),
                          ),
                          Text(
                            subtitle!,
                            style: AppTextStyle.font12RegularInter.copyWith(
                              color: onColor,
                            ),
                          ),
                        ],
                      ),
              ),
              Icon(Icons.arrow_forward, color: onColor),
            ],
          ),
        ),
      ),
    );
  }
}
