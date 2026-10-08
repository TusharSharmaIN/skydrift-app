part of '../drift_gallery_page.dart';

class _DriftGalleryCard extends StatelessWidget {
  const _DriftGalleryCard({
    required this.imageUrl,
    required this.title,
    required this.cloudType,
    required this.onTap,
  });

  final String imageUrl;
  final String title;
  final String cloudType;
  final VoidCallback onTap;

  static const double tileHeight = 248;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(16.r),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (_, _, _) => ColoredBox(
                  color: colors.surfaceContainerHighest,
                  child: Icon(
                    Icons.cloud_outlined,
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 72.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cloudType,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.font12MediumInter.copyWith(
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.font12RegularInter,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
