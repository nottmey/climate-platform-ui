import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// example
final entitiesProviderFamily = StreamProvider.autoDispose
    .family<List<Data$Query$Entity>, String>((ref, database) {
  return getIt<ArtemisClient>()
      .stream(DataQuery(variables: DataArguments(database: database)))
      .map((event) => event.data?.list ?? []);
});
