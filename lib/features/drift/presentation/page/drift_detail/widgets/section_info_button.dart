part of '../drift_detail_page.dart';

class SectionInfoButton extends StatelessWidget {
  const SectionInfoButton({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  Future<void> _show(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title, style: AppTextStyle.font18SemiBoldPlusJakartaSans),
          content: Text(message, style: AppTextStyle.font14RegularInter),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'OK',
                style: AppTextStyle.font14SemiBoldInter.copyWith(
                  color: colors.primary,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return IconButton(
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints.tight(Size(28.sq, 28.sq)),
      onPressed: () => _show(context),
      icon: Icon(Icons.info_outline, color: colors.onSurfaceVariant, size: 20),
      tooltip: title,
    );
  }
}
