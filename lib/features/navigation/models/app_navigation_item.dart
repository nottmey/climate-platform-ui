import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationItem {
  final IconData iconData;
  final String label;
  final GoRoute route;

  AppNavigationItem({
    required this.iconData,
    required this.label,
    required this.route,
  }) : assert(route.path.startsWith('/'));
}
