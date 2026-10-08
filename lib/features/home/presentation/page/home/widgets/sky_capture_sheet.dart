part of '../home_page.dart';

class SkyCaptureSheet extends StatelessWidget {
  const SkyCaptureSheet({super.key, required this.onPicked});

  final ValueChanged<XFile> onPicked;

  static Future<void> show(
    BuildContext context, {
    required ValueChanged<XFile> onPicked,
  }) {
    final colors = Theme.of(context).colorScheme;
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (_) => SkyCaptureSheet(onPicked: onPicked),
    );
  }

  Future<void> _takePhoto(BuildContext context) async {
    final file = await Navigator.of(context).push<XFile>(
      MaterialPageRoute(builder: (_) => const SkyCameraPage()),
    );
    if (!context.mounted || file == null) {
      return;
    }
    Navigator.of(context).pop();
    onPicked(file);
  }

  Future<void> _pickFromGallery(BuildContext context) async {
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
      maxWidth: 1920,
    );
    if (!context.mounted) {
      return;
    }
    Navigator.of(context).pop();
    if (file != null) {
      onPicked(file);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: colors.outlineVariant,
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            SizedBox(height: 20.h),
            ListTile(
              leading: Icon(Icons.photo_camera_outlined, color: colors.primary),
              title: Text(
                StringsConstant.takePhoto,
                style: AppTextStyle.font16MediumPlusJakartaSans,
              ),
              onTap: () => _takePhoto(context),
            ),
            ListTile(
              leading: Icon(
                Icons.photo_library_outlined,
                color: colors.secondary,
              ),
              title: Text(
                StringsConstant.pickFromGallery,
                style: AppTextStyle.font16MediumPlusJakartaSans,
              ),
              onTap: () => _pickFromGallery(context),
            ),
          ],
        ),
      ),
    );
  }
}
