import 'package:flutter/material.dart';

import 'package:skydrift/theme/base_colors.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: BaseColors.primary,
    scaffoldBackgroundColor: BaseColors.scaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: BaseColors.scaffoldBackgroundColor,
      foregroundColor: BaseColors.onSurface,
      elevation: 0,
      centerTitle: false,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: BaseColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.grey3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.primary),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.grey3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.grey3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.errorRed),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: BaseColors.errorRed),
      ),
    ),
  );
}
