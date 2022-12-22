import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabTransitionPage<T> extends CustomTransitionPage<T> {
  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);

  TabTransitionPage({
    super.key,
    required super.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 150),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            return FadeTransition(
              opacity: animation.drive(_curveTween),
              child: child,
            );
          },
        );
}
