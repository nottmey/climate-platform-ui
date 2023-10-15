import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

import 'utils/local_file_comparator_with_threshold.dart';

const goldenMaximumDiffThreshold = 0.001;

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  if (goldenFileComparator is LocalFileComparator) {
    final baseDir = (goldenFileComparator as LocalFileComparator).basedir;

    // temp fix for https://github.com/flutter/flutter/issues/111739
    goldenFileComparator = LocalFileComparatorWithThreshold(
      // imaginary file needed for constructor to find base dir (again)
      Uri.parse('$baseDir/example_test_file.dart'),
      goldenMaximumDiffThreshold,
    );
  } else {
    throw Exception(
      'Flutters goldenFileComparator is not of type LocalFileComparator, '
      'but of type `${goldenFileComparator.runtimeType}`',
    );
  }

  await testMain();
}
