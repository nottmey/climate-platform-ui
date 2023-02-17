import 'package:file/local.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform/platform.dart';

// Loads the cached material icon font.
// Only necessary for golden tests.
// Relies on the tool updating cached assets before running tests.
// Found here: https://github.com/flutter/flutter/pull/74131/files
Future<void> loadInternalIconFont() async {
  const fs = LocalFileSystem();
  const platform = LocalPlatform();
  final flutterRoot = fs.directory(platform.environment['FLUTTER_ROOT']);

  final iconFont = flutterRoot.childFile(
    fs.path.join(
      'bin',
      'cache',
      'artifacts',
      'material_fonts',
      'MaterialIcons-Regular.otf',
    ),
  );

  final bytes =
      Future<ByteData>.value(iconFont.readAsBytesSync().buffer.asByteData());

  await (FontLoader('MaterialIcons')..addFont(bytes)).load();
}
