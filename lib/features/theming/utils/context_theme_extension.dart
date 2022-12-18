import 'package:flutter/material.dart';

extension ContextThemeExtension on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }
}
