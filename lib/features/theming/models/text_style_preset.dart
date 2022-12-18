import 'package:flutter/material.dart';

// use accordingly: https://m3.material.io/styles/typography/applying-type
enum TextStylePreset {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  labelLarge,
  labelMedium,
  labelSmall,
  bodyLarge,
  bodyMedium,
  bodySmall;

  TextStyle? of(ThemeData theme) {
    final textTheme = theme.textTheme;
    switch (this) {
      case TextStylePreset.displayLarge:
        return textTheme.displayLarge;
      case TextStylePreset.displayMedium:
        return textTheme.displayMedium;
      case TextStylePreset.displaySmall:
        return textTheme.displaySmall;
      case TextStylePreset.headlineLarge:
        return textTheme.headlineLarge;
      case TextStylePreset.headlineMedium:
        return textTheme.headlineMedium;
      case TextStylePreset.headlineSmall:
        return textTheme.headlineSmall;
      case TextStylePreset.titleLarge:
        return textTheme.titleLarge;
      case TextStylePreset.titleMedium:
        return textTheme.titleMedium;
      case TextStylePreset.titleSmall:
        return textTheme.titleSmall;
      case TextStylePreset.labelLarge:
        return textTheme.labelLarge;
      case TextStylePreset.labelMedium:
        return textTheme.labelMedium;
      case TextStylePreset.labelSmall:
        return textTheme.labelSmall;
      case TextStylePreset.bodyLarge:
        return textTheme.bodyLarge;
      case TextStylePreset.bodyMedium:
        return textTheme.bodyMedium;
      case TextStylePreset.bodySmall:
        return textTheme.bodySmall;
    }
  }
}
