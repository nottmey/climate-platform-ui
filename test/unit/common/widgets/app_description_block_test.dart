import 'dart:async';

import 'package:climate/common/widgets/app_description_block.dart';
import 'package:climate/common/widgets/app_error.dart';
import 'package:climate/common/widgets/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// widget testing demo
void main() {
  testWidgets('$AppDescriptionBlock with direct state', (tester) async {
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
    expect(find.byType(Markdown), findsOneWidget);
    expect(find.text('direct', findRichText: true), findsOneWidget);
  });
  testWidgets('$AppDescriptionBlock with stream', (tester) async {
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
    expect(find.byType(Markdown), findsOneWidget);
    expect(find.text('state change', findRichText: true), findsOneWidget);
    controller.sink.addError(Exception('error'));
    await tester.pump();
    expect(find.byType(AppError), findsOneWidget);
    controller.sink.add(null);
    await tester.pump();
    expect(find.byType(AppLoading), findsNothing);
    expect(find.byType(AppError), findsNothing);
  });
}
