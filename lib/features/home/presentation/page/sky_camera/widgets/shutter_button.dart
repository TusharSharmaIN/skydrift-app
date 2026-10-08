part of '../sky_camera_page.dart';

class _ShutterButton extends StatelessWidget {
  const _ShutterButton({required this.enabled, required this.onPressed});

  final bool enabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: enabled ? onPressed : null,
      child: Container(
        width: 76.sq,
        height: 76.sq,
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: colors.onPrimary, width: 3),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: enabled ? colors.onPrimary : colors.outline,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
