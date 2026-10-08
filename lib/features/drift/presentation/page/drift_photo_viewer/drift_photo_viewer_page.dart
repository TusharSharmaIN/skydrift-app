import 'package:flutter/material.dart';

class DriftPhotoViewerPage extends StatelessWidget {
  const DriftPhotoViewerPage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.scrim,
      appBar: AppBar(
        backgroundColor: colors.scrim,
        foregroundColor: colors.onPrimary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return InteractiveViewer(
            minScale: 1,
            maxScale: 4,
            child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
                alignment: Alignment.center,
                errorBuilder: (_, _, _) => Icon(
                  Icons.cloud_outlined,
                  color: colors.onSurfaceVariant,
                  size: 64,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
