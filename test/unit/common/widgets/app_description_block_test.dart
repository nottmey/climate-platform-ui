import 'dart:async';

import 'package:climate_platform_ui/common/widgets/app_description_block.dart';
import 'package:climate_platform_ui/common/widgets/app_error.dart';
import 'package:climate_platform_ui/common/widgets/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  // widget testing demo
  testWidgets('$AppDescriptionBlock', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: AppDescriptionBlock(
            provider: StateProvider((ref) => const AsyncData('direct')),
            onSave: (value) async {},
          ),
        ),
      ),
    );
    expect(find.text('direct'), findsOneWidget);

    final controller = StreamController<String?>();
    final streamProvider = StreamProvider((ref) => controller.stream);
    await tester.pumpWidget(
      ProviderScope(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: AppDescriptionBlock(
            provider: streamProvider,
            onSave: (value) async {},
          ),
        ),
      ),
    );
    expect(find.byType(AppLoading), findsOneWidget);
    controller.sink.add('state change');
    await tester.pump();
    expect(find.text('state change'), findsOneWidget);
    controller.sink.addError(Exception('error'));
    await tester.pump();
    expect(find.byType(AppError), findsOneWidget);
    controller.sink.add(null);
    await tester.pump();
    expect(find.byType(AppLoading), findsNothing);
    expect(find.byType(AppError), findsNothing);
  });
}
