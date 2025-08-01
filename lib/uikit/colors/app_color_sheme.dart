import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  const AppColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.surface,
    required this.onSurface,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.onInverseSurface,
    required this.inversePrimary,
    required this.surfaceTint,
    required this.shimmer,
    required this.activatedFilterButtonColor,
    required this.inActivatedFilterButtonColor,
    required this.activatedThemeButtonColor,
    required this.inActivatedThemeButtonColor,
    required this.sectionBackgroundColor,
    required this.settingsBackgroundColor,
    required this.approval,
  });

  const AppColorScheme.light()
    : primary = const Color.fromARGB(255, 46, 133, 233),
      onPrimary = const Color(0xFFFFFFFF),
      primaryContainer = const Color(0xFF90CAF9),
      onPrimaryContainer = const Color(0xFF000000),
      secondary = const Color(0xFF039BE5),
      onSecondary = const Color(0xFFFFFFFF),
      secondaryContainer = const Color(0xFFCBE6FF),
      onSecondaryContainer = const Color(0xFF000000),
      tertiary = const Color(0xFF0277BD),
      onTertiary = const Color(0xFFFFFFFF),
      tertiaryContainer = const Color(0xFFBEDCFF),
      onTertiaryContainer = const Color(0xFF000000),
      error = const Color.fromARGB(255, 218, 3, 43),
      onError = const Color(0xFFFFFFFF),
      errorContainer = const Color(0xFFFCD9DF),
      onErrorContainer = const Color(0xFF000000),
      surface = const Color(0xFFFCFCFC),
      onSurface = const Color(0xFF111111),
      surfaceDim = const Color(0xFFE0E0E0),
      surfaceBright = const Color(0xFFFDFDFD),
      surfaceContainerLowest = const Color(0xFFFFFFFF),
      surfaceContainerLow = const Color(0xFFF8F8F8),
      surfaceContainer = const Color(0xFFF3F3F3),
      surfaceContainerHigh = const Color(0xFFEDEDED),
      surfaceContainerHighest = const Color(0xFFE7E7E7),
      onSurfaceVariant = const Color(0xFF393939),
      outline = const Color(0xFF919191),
      outlineVariant = const Color(0xFFD1D1D1),
      shadow = const Color(0xFF000000),
      scrim = const Color(0xFF000000),
      inverseSurface = const Color(0xFF2A2A2A),
      onInverseSurface = const Color(0xFFF1F1F1),
      inversePrimary = const Color(0xFFAEDFFF),
      surfaceTint = const Color(0xFF1565C0),
      shimmer = const Color(0xFFD1D1D1),
      activatedFilterButtonColor = const Color(0xFFb2b2b2),
      inActivatedFilterButtonColor = const Color(0xFFe0e0e2),
      activatedThemeButtonColor = const Color(0xFFFFFFFF),
      inActivatedThemeButtonColor = const Color(0xFFDADADA),
      sectionBackgroundColor = const Color(0xFFFFFFFF),
      settingsBackgroundColor = const Color.fromARGB(255, 242, 242, 242),
      approval = Colors.green;

  const AppColorScheme.dark()
    : primary = const Color(0xFF90CAF9),
      onPrimary = const Color(0xFF000000),
      primaryContainer = const Color(0xFF0D47A1),
      onPrimaryContainer = const Color(0xFFFFFFFF),
      secondary = const Color(0xFF81D4FA),
      onSecondary = const Color(0xFF000000),
      secondaryContainer = const Color(0xFF004B73),
      onSecondaryContainer = const Color(0xFFFFFFFF),
      tertiary = const Color(0xFFE1F5FE),
      onTertiary = const Color(0xFF000000),
      tertiaryContainer = const Color(0xFF1A567D),
      onTertiaryContainer = const Color(0xFFFFFFFF),
      error = const Color(0xFFCF6679),
      onError = const Color(0xFF000000),
      errorContainer = const Color(0xFFB1384E),
      onErrorContainer = const Color(0xFFFFFFFF),
      surface = const Color(0xFF080808),
      onSurface = const Color(0xFFF1F1F1),
      surfaceDim = const Color(0xFF060606),
      surfaceBright = const Color(0xFF2C2C2C),
      surfaceContainerLowest = const Color(0xFF010101),
      surfaceContainerLow = const Color(0xFF0E0E0E),
      surfaceContainer = const Color(0xFF151515),
      surfaceContainerHigh = const Color(0xFF1D1D1D),
      surfaceContainerHighest = const Color(0xFF282828),
      onSurfaceVariant = const Color(0xFFCACACA),
      outline = const Color(0xFF777777),
      outlineVariant = const Color(0xFF414141),
      shadow = const Color(0xFF000000),
      scrim = const Color(0xFF000000),
      inverseSurface = const Color(0xFFE8E8E8),
      onInverseSurface = const Color(0xFF2A2A2A),
      inversePrimary = const Color(0xFF445B6B),
      surfaceTint = const Color(0xFF90CAF9),
      shimmer = const Color(0xFFD1D1D1),
      activatedFilterButtonColor = const Color(0xFFb2b2b2),
      inActivatedFilterButtonColor = const Color(0xFFe0e0e2),
      activatedThemeButtonColor = const Color(0xFFFFFFFF),
      inActivatedThemeButtonColor = const Color(0xFFDADADA),
      sectionBackgroundColor = const Color(0xFFFFFFFF),
      settingsBackgroundColor = const Color.fromARGB(255, 242, 242, 242),
      approval = Colors.green;
  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color surface;
  final Color onSurface;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color onInverseSurface;
  final Color inversePrimary;
  final Color surfaceTint;
  final Color shimmer;
  final Color activatedFilterButtonColor;
  final Color inActivatedFilterButtonColor;
  final Color activatedThemeButtonColor;
  final Color inActivatedThemeButtonColor;
  final Color sectionBackgroundColor;
  final Color settingsBackgroundColor;
  final Color approval;

  @override
  AppColorScheme copyWith({
    Color? primary,
    Color? onPrimary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondary,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiary,
    Color? onTertiary,
    Color? tertiaryContainer,
    Color? onTertiaryContainer,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? surface,
    Color? onSurface,
    Color? surfaceDim,
    Color? surfaceBright,
    Color? surfaceContainerLowest,
    Color? surfaceContainerLow,
    Color? surfaceContainer,
    Color? surfaceContainerHigh,
    Color? surfaceContainerHighest,
    Color? onSurfaceVariant,
    Color? outline,
    Color? outlineVariant,
    Color? shadow,
    Color? scrim,
    Color? inverseSurface,
    Color? onInverseSurface,
    Color? inversePrimary,
    Color? surfaceTint,
    Color? shimmer,
    Color? activatedFilterButtonColor,
    Color? inActivatedFilterButtonColor,
    Color? activatedThemeButtonColor,
    Color? inActivatedThemeButtonColor,
    Color? sectionBackgroundColor,
    Color? settingsBackgroundColor,
    Color? approval,
  }) {
    return AppColorScheme._(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      tertiary: tertiary ?? this.tertiary,
      onTertiary: onTertiary ?? this.onTertiary,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest:
          surfaceContainerHighest ?? this.surfaceContainerHighest,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      outline: outline ?? this.outline,
      outlineVariant: outlineVariant ?? this.outlineVariant,
      shadow: shadow ?? this.shadow,
      scrim: scrim ?? this.scrim,
      inverseSurface: inverseSurface ?? this.inverseSurface,
      onInverseSurface: onInverseSurface ?? this.onInverseSurface,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      shimmer: shimmer ?? this.shimmer,
      activatedFilterButtonColor:
          activatedFilterButtonColor ?? this.activatedFilterButtonColor,
      inActivatedFilterButtonColor:
          inActivatedFilterButtonColor ?? this.inActivatedFilterButtonColor,
      activatedThemeButtonColor:
          activatedThemeButtonColor ?? this.activatedThemeButtonColor,
      inActivatedThemeButtonColor:
          inActivatedThemeButtonColor ?? this.inActivatedThemeButtonColor,
      sectionBackgroundColor:
          sectionBackgroundColor ?? this.sectionBackgroundColor,
      settingsBackgroundColor:
          settingsBackgroundColor ?? this.settingsBackgroundColor,
      approval: approval ?? this.approval,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      onPrimaryContainer: Color.lerp(
        onPrimaryContainer,
        other.onPrimaryContainer,
        t,
      )!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      secondaryContainer: Color.lerp(
        secondaryContainer,
        other.secondaryContainer,
        t,
      )!,
      onSecondaryContainer: Color.lerp(
        onSecondaryContainer,
        other.onSecondaryContainer,
        t,
      )!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      tertiaryContainer: Color.lerp(
        tertiaryContainer,
        other.tertiaryContainer,
        t,
      )!,
      onTertiaryContainer: Color.lerp(
        onTertiaryContainer,
        other.onTertiaryContainer,
        t,
      )!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onErrorContainer: Color.lerp(
        onErrorContainer,
        other.onErrorContainer,
        t,
      )!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainerLowest: Color.lerp(
        surfaceContainerLowest,
        other.surfaceContainerLowest,
        t,
      )!,
      surfaceContainerLow: Color.lerp(
        surfaceContainerLow,
        other.surfaceContainerLow,
        t,
      )!,
      surfaceContainer: Color.lerp(
        surfaceContainer,
        other.surfaceContainer,
        t,
      )!,
      surfaceContainerHigh: Color.lerp(
        surfaceContainerHigh,
        other.surfaceContainerHigh,
        t,
      )!,
      surfaceContainerHighest: Color.lerp(
        surfaceContainerHighest,
        other.surfaceContainerHighest,
        t,
      )!,
      onSurfaceVariant: Color.lerp(
        onSurfaceVariant,
        other.onSurfaceVariant,
        t,
      )!,
      outline: Color.lerp(outline, other.outline, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      scrim: Color.lerp(scrim, other.scrim, t)!,
      inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
      onInverseSurface: Color.lerp(
        onInverseSurface,
        other.onInverseSurface,
        t,
      )!,
      inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
      surfaceTint: Color.lerp(surfaceTint, other.surfaceTint, t)!,
      shimmer: Color.lerp(shimmer, other.shimmer, t)!,
      activatedFilterButtonColor: Color.lerp(
        activatedFilterButtonColor,
        other.activatedFilterButtonColor,
        t,
      )!,
      inActivatedFilterButtonColor: Color.lerp(
        inActivatedFilterButtonColor,
        other.inActivatedFilterButtonColor,
        t,
      )!,
      activatedThemeButtonColor: Color.lerp(
        activatedThemeButtonColor,
        other.activatedThemeButtonColor,
        t,
      )!,
      inActivatedThemeButtonColor: Color.lerp(
        inActivatedThemeButtonColor,
        other.inActivatedThemeButtonColor,
        t,
      )!,
      sectionBackgroundColor: Color.lerp(
        sectionBackgroundColor,
        other.sectionBackgroundColor,
        t,
      )!,
      settingsBackgroundColor: Color.lerp(
        settingsBackgroundColor,
        other.settingsBackgroundColor,
        t,
      )!,
      approval: Color.lerp(approval, other.approval, t)!,
    );
  }

  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>() ??
      _throwThemeExceptionFromFunc(context);
}

Never _throwThemeExceptionFromFunc(BuildContext context) =>
    throw Exception('$AppColorScheme not found in $context');
