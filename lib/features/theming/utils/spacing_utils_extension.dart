import 'package:climate_platform_ui/features/theming/themes/default_theme.dart';
import 'package:flutter/material.dart';

extension SpacingUtilsExtension on ThemeData {
  EdgeInsets spacing({
    int all = 0,
    int horizontal = 0,
    int vertical = 0,
    int left = 0,
    int top = 0,
    int right = 0,
    int bottom = 0,
  }) {
    return EdgeInsets.fromLTRB(
      (all + horizontal + left) * spacingBase,
      (all + vertical + top) * spacingBase,
      (all + horizontal + right) * spacingBase,
      (all + vertical + bottom) * spacingBase,
    );
  }

  Padding spacedPadding({
    Key? key,
    int all = 0,
    int horizontal = 0,
    int vertical = 0,
    int left = 0,
    int top = 0,
    int right = 0,
    int bottom = 0,
    Widget? child,
  }) {
    return Padding(
      key: key,
      padding: spacing(
        all: all,
        horizontal: horizontal,
        vertical: vertical,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: child,
    );
  }

  SizedBox spacedSizedBox({
    Key? key,
    int? height,
    int? width,
    Widget? child,
  }) {
    return SizedBox(
      key: key,
      height: height != null ? height * spacingBase : null,
      width: width != null ? width * spacingBase : null,
      child: child,
    );
  }

  SliverToBoxAdapter spacedSliverSizedBox({
    Key? key,
    int? height,
    int? width,
    Widget? child,
  }) {
    return SliverToBoxAdapter(
      child: spacedSizedBox(
        key: key,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
