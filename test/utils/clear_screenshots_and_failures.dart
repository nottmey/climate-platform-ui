import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void clearScreenshotsAndFailures() {
  final baseDir = (goldenFileComparator as LocalFileComparator).basedir;
  final screenshots = Directory.fromUri(baseDir.resolve('failures'));
  if (screenshots.existsSync()) {
    screenshots.deleteSync(recursive: true);
  }
  final failures = Directory.fromUri(baseDir.resolve('screenshots'));
  if (failures.existsSync()) {
    failures.deleteSync(recursive: true);
  }
}
