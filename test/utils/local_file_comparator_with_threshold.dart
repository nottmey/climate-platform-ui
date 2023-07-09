import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

// temp fix for https://github.com/flutter/flutter/issues/111739
class LocalFileComparatorWithThreshold extends LocalFileComparator {
  final double threshold;

  LocalFileComparatorWithThreshold(super.testFile, this.threshold)
      : assert(threshold >= 0 && threshold <= 1);

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    // adapted from super
    final result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    // new, to allow for minimal differences
    if (!result.passed && result.diffPercent <= threshold) {
      debugPrint(
        'Diff of ${result.diffPercent * 100}% below threshold '
        '${threshold * 100}% was found in $golden',
      );

      return true;
    }

    // adapted from super
    if (!result.passed) {
      final error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }
    return result.passed;
  }
}
