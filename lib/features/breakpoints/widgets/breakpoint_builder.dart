import 'package:climate_platform_ui/features/breakpoints/models/window_size_class.dart';
import 'package:flutter/material.dart';

class BreakpointBuilder extends StatelessWidget {
  final Widget Function(BuildContext, WindowSize) builder;

  const BreakpointBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, WindowSize.fromConstraints(constraints));
      },
    );
  }
}
