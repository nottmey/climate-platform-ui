import 'dart:io';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

class SafeArea implements WindowPadding {
  @override
  final double bottom;

  @override
  final double left;

  @override
  final double right;

  @override
  final double top;

  const SafeArea({
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.top = 0,
  });
}

/// Allows you to capture a screenshot of the current testing state.
///
/// Troubleshooting:
/// - If you see a black font, only the default testing font is loaded. If your
///   font is dynamically loaded, it can help to wait for it via
///   `tester.runAsync(() => Future.delayed(Duration(milliseconds: 1)))`. Or
///   you wait for font loading in the test setup.
Future<void> captureScreen(
  WidgetTester tester,
  String name, {
  // default: iPhone 14
  Size deviceSize = const Size(390, 844),
  SafeArea deviceSafeArea = const SafeArea(bottom: 34, top: 47),
  double devicePixelRatio = 2.0,
  double textScaleFactor = 1.0,
  Brightness brightness = Brightness.light,
  bool skipRunAsync = false,
}) async {
  try {
    final basedir = (goldenFileComparator as LocalFileComparator).basedir;
    final fileUri = basedir.resolve('screenshots/$name.png');
    final file = File.fromUri(fileUri);

    await tester.binding.setSurfaceSize(deviceSize);
    tester.binding.window.physicalSizeTestValue = Size(
      deviceSize.width * devicePixelRatio,
      deviceSize.height * devicePixelRatio,
    );
    tester.binding.window.devicePixelRatioTestValue = devicePixelRatio;
    tester.binding.window.platformDispatcher.textScaleFactorTestValue =
        textScaleFactor;
    tester.binding.window.platformDispatcher.platformBrightnessTestValue =
        brightness;
    tester.binding.window.paddingTestValue = deviceSafeArea;
    // needs 2 pumps afterwards
    await tester.pump();
    await tester.pump();

    final finder = find.byWidgetPredicate((w) => true).first; // root
    var renderObject = finder.evaluate().single.renderObject!;
    while (!renderObject.isRepaintBoundary) {
      renderObject = renderObject.parent! as RenderObject;
    }
    assert(!renderObject.debugNeedsPaint, 'captured render object is ready');
    final layer = renderObject.debugLayer! as OffsetLayer;
    final paintBounds = renderObject.paintBounds;

    Future<void> writeImageToFile() async {
      final image = await layer.toImage(paintBounds);
      final bytes = await image.toByteData(format: ImageByteFormat.png);
      assert(bytes != null, 'encoding the screenshot works');
      final imageBytes = bytes!.buffer.asUint8List();
      await file.parent.create(recursive: true);
      await file.writeAsBytes(imageBytes, flush: true);
    }

    if (skipRunAsync) {
      await writeImageToFile();
    } else {
      await tester.runAsync(writeImageToFile);
    }
  } catch (e) {
    rethrow;
  } finally {
    tester.binding.window.clearAllTestValues();
  }
}
