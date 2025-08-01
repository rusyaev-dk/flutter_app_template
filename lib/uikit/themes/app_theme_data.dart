import 'package:flutter/material.dart';
import 'package:flutter_app_template/uikit/uikit.dart';

abstract class AppThemeData {
  static final lightTheme = ThemeData(
    extensions: [_lightColorScheme, _textScheme],
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _lightColorScheme.primary,
      onPrimary: _lightColorScheme.onPrimary,
      secondary: _lightColorScheme.secondary,
      onSecondary: _lightColorScheme.onSecondary,
      error: _lightColorScheme.error,
      onError: _lightColorScheme.onError,
      surface: _lightColorScheme.surface,
      surfaceContainer: _lightColorScheme.surfaceContainer,
      onSurface: _lightColorScheme.onSurface,
    ),
    scaffoldBackgroundColor: _lightColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorScheme.surface,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(fontSize: 14),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColorScheme.surface,
      selectedItemColor: _lightColorScheme.primary,
      unselectedItemColor: _lightColorScheme.onSurface,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: _lightColorScheme.primary,
      contentTextStyle: TextStyle(color: _lightColorScheme.onPrimary),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: _lightColorScheme.surface,
      titleTextStyle: _textScheme.headline.copyWith(
        fontSize: 22,
        color: _lightColorScheme.onSurface,
      ),
      contentTextStyle: _textScheme.label.copyWith(
        fontSize: 18,
        color: _lightColorScheme.onSurface,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    extensions: [_darkColorScheme, _textScheme],
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: _darkColorScheme.primary,
      onPrimary: _darkColorScheme.onPrimary,
      secondary: _darkColorScheme.secondary,
      onSecondary: _darkColorScheme.onSecondary,
      error: _darkColorScheme.error,
      onError: _darkColorScheme.onError,
      surface: _darkColorScheme.surface,
      surfaceContainer: _darkColorScheme.surfaceContainer,
      onSurface: _darkColorScheme.onSurface,
    ),
    scaffoldBackgroundColor: _darkColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorScheme.surface,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _darkColorScheme.surface,
      selectedItemColor: _darkColorScheme.primary,
      unselectedItemColor: _darkColorScheme.onSurface,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: _darkColorScheme.primary,
      contentTextStyle: TextStyle(color: _darkColorScheme.onPrimary),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: _darkColorScheme.surface,
      titleTextStyle: _textScheme.headline.copyWith(
        fontSize: 22,
        color: _darkColorScheme.onSurface,
      ),
      contentTextStyle: _textScheme.label.copyWith(
        fontSize: 18,
        color: _darkColorScheme.onSurface,
      ),
    ),
  );

  static const _lightColorScheme = AppColorScheme.light();
  static const _darkColorScheme = AppColorScheme.dark();
  static final _textScheme = AppTextScheme.base();
}
