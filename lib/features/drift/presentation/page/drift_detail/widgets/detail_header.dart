part of '../drift_detail_page.dart';

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({
    required this.imageUrl,
    required this.cloudName,
    required this.onOpenPhoto,
  });

  final String imageUrl;
  final String cloudName;
  final VoidCallback onOpenPhoto;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SliverAppBar(
      expandedHeight: 320.h,
      pinned: true,
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      actions: [
        IconButton(
          tooltip: StringsConstant.viewFullPhoto,
          onPressed: onOpenPhoto,
          icon: const Icon(Icons.fullscreen),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            GestureDetector(
              onTap: onOpenPhoto,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => ColoredBox(
                  color: colors.surfaceContainerHighest,
                  child: Icon(
                    Icons.cloud_outlined,
                    size: 64,
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ),
            ),
            const IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0x00000000), Color(0x99000000)],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 20.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 8.h,
                    ),
                    color: const Color(0x66FFFFFF),
                    child: Text(
                      cloudName,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.font14SemiBoldPlusJakartaSans
                          .copyWith(color: colors.onPrimary),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
