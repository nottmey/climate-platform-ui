import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/stream.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final availableDatabasesProvider = StreamProvider((ref) {
  return stream(DatabasesQuery()).map((data) => data.databases);
});
