import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextRouterExtension on BuildContext {
  void pushIfNew(String location, {Object? extra}) {
    final state = GoRouterState.of(this);
    if (state.location != location) {
      push(location, extra: extra);
    }
  }
}
