import 'package:flutter/material.dart';

// defined in https://m3.material.io/foundations/adaptive-design/large-screens/overview#f42c09a8-0bd5-4cca-8960-5471e515f1da
enum WindowSize {
  compact(columns: 4, minMarginSize: 8, minGutterSize: 8),
  medium(columns: 12, minMarginSize: 12, minGutterSize: 12),
  expanded(columns: 12, minMarginSize: 32, minGutterSize: 32);

  final int columns;
  final int minMarginSize;
  final int minGutterSize;

  const WindowSize({
    required this.columns,
    required this.minMarginSize,
    required this.minGutterSize,
  });

  factory WindowSize.from({required Size viewSize}) {
    if (viewSize.width < 600 || viewSize.height < 600) {
      // portrait & landscape phones
      return WindowSize.compact;
    } else if (viewSize.width < 840) {
      // foldable small tablets
      return WindowSize.medium;
    } else {
      // large tablets & laptops etc.
      return WindowSize.expanded;
    }
  }

  factory WindowSize.fromConstraints(BoxConstraints constraints) {
    return WindowSize.from(viewSize: constraints.biggest);
  }

  factory WindowSize.fromMediaQuery(MediaQueryData data) {
    return WindowSize.from(viewSize: data.size);
  }

  bool isCompact() {
    return this == WindowSize.compact;
  }

  bool isMedium() {
    return this == WindowSize.medium;
  }

  bool isExpanded() {
    return this == WindowSize.expanded;
  }
}
