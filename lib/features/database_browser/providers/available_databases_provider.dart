import 'package:artemis/client.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final availableDatabasesProvider = StreamProvider((ref) {
  return getIt<ArtemisClient>()
      .stream(DatabasesQuery())
      .map((event) => event.data?.databases ?? []);
});