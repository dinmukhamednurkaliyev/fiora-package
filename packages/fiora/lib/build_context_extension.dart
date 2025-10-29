import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get color => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color? get iconThemeColor => theme.iconTheme.color;

  TextStyles get text => (
    displayLarge: textTheme.displayLarge,
    displayMedium: textTheme.displayMedium,
    displaySmall: textTheme.displaySmall,

    headlineLarge: textTheme.headlineLarge,
    headlineMedium: textTheme.headlineMedium,
    headlineSmall: textTheme.headlineSmall,

    titleLarge: textTheme.titleLarge,
    titleMedium: textTheme.titleMedium,
    titleSmall: textTheme.titleSmall,

    bodyLarge: textTheme.bodyLarge,
    bodyMedium: textTheme.bodyMedium,
    bodySmall: textTheme.bodySmall,

    labelLarge: textTheme.labelLarge,
    labelMedium: textTheme.labelMedium,
    labelSmall: textTheme.labelSmall,

    weight: (
      thin: FontWeight.w100,
      extraLight: FontWeight.w200,
      light: FontWeight.w300,
      normal: FontWeight.w400,
      medium: FontWeight.w500,
      semiBold: FontWeight.w600,
      bold: FontWeight.w700,
      extraBold: FontWeight.w800,
      black: FontWeight.w900,
    ),
  );
}

typedef FontWeights = ({
  FontWeight thin,
  FontWeight extraLight,
  FontWeight light,
  FontWeight normal,
  FontWeight medium,
  FontWeight semiBold,
  FontWeight bold,
  FontWeight extraBold,
  FontWeight black,
});

typedef TextStyles = ({
  TextStyle? displayLarge,
  TextStyle? displayMedium,
  TextStyle? displaySmall,

  TextStyle? headlineLarge,
  TextStyle? headlineMedium,
  TextStyle? headlineSmall,

  TextStyle? titleLarge,
  TextStyle? titleMedium,
  TextStyle? titleSmall,

  TextStyle? bodyLarge,
  TextStyle? bodyMedium,
  TextStyle? bodySmall,

  TextStyle? labelLarge,
  TextStyle? labelMedium,
  TextStyle? labelSmall,

  FontWeights weight,
});
