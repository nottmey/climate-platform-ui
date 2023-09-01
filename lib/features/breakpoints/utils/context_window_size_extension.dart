import 'package:climate/features/breakpoints/models/window_size_class.dart';
import 'package:flutter/material.dart';

extension ContextWindowSizeExtension on BuildContext {
  WindowSize queryWindowSize() {
    return WindowSize.fromMediaQuery(MediaQuery.of(this));
  }
}
