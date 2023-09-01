import 'package:climate/features/theming/utils/spacing_utils_extension.dart';
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
    textTheme: GoogleFonts.atkinsonHyperlegibleTextTheme(
      // disclaimer: Atkinson Hyperlegible only has weights 400 and 700 available
      const TextTheme(
          // override values here if you want
          // empty param means using the default material value
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
  Color(0xFF252617),
];

const pastelPalette = [
  Color(0xFF4E7DA6),
  Color(0xFF7EBCF2),
  Color(0xFF8C7F3E),
  Color(0xFFF2B66D),
  Color(0xFF592E1E),
];
