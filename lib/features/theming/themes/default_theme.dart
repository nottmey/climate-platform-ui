import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// function, so it gets hot reloaded when changing a value
ThemeData defaultTheme({
  Color seedColor = Colors.teal,
  Brightness brightness = Brightness.light,
}) {
  final m3theme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    ),
    textTheme: GoogleFonts.openSansTextTheme(
      // empty param means using the default material value
      const TextTheme(
        // overwrite height, because else characters overflow
        displayLarge: TextStyle(fontSize: 57, height: 73 / 57),
        displayMedium: TextStyle(fontSize: 45, height: 57 / 45),
        displaySmall: TextStyle(fontSize: 36, height: 46 / 36),
        headlineLarge: TextStyle(),
        headlineMedium: TextStyle(),
        headlineSmall: TextStyle(),
        titleLarge: TextStyle(fontSize: 22, height: 29 / 22),
        titleMedium: TextStyle(),
        titleSmall: TextStyle(),
        labelLarge: TextStyle(),
        labelMedium: TextStyle(fontSize: 12, height: 17 / 12),
        labelSmall: TextStyle(),
        bodyLarge: TextStyle(),
        bodyMedium: TextStyle(),
        bodySmall: TextStyle(fontSize: 12, height: 17 / 12),
      ),
    ),
    useMaterial3: true,
  );
  return m3theme.copyWith(
    iconTheme: m3theme.iconTheme.copyWith(
      size: m3theme.spacingBase * 6,
    ),
  );
}

const tealPalette = [
  Color(0xFF011526),
  Color(0xFF012E40),
  Color(0xFF025959),
  Color(0xFF02735E),
  Color(0xFF038C65),
];

const intensePalette = [
  Color(0xFFD93D59),
  Color(0xFF590219),
  Color(0xFF023E73),
  Color(0xFF0477BF),
  Color(0xFFD96E30),
];

const greenPalette = [
  Color(0xFF34401A),
  Color(0xFF64732F),
  Color(0xFFCAD959),
  Color(0xFFB4BF60),
  Color(0xFF252617)
];

const pastelPalette = [
  Color(0xFF4E7DA6),
  Color(0xFF7EBCF2),
  Color(0xFF8C7F3E),
  Color(0xFFF2B66D),
  Color(0xFF592E1E),
];
