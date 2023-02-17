import 'package:hooks_riverpod/hooks_riverpod.dart';

export 'package:flutter/material.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart'
    show
        AsyncData,
        AsyncError,
        AsyncLoading,
        AsyncValue,
        AsyncValueX,
        WidgetRef;

abstract class AppWidget extends HookConsumerWidget {
  const AppWidget({super.key});
}
