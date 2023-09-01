import 'package:async/async.dart';
import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/subscribe.dart';
import 'package:climate/common/providers/entity_cache_provider.dart';
import 'package:climate/features/planetary_boundaries/providers/planetary_boundary_creations_sink.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationsProvider = StreamProvider<String>((ref) {
  // remember to check whether the stream provider subscription is closed, once you implement connection closing/reopening
  final onlineCreations = subscribe(
    OnCreatedPlanetaryBoundarySubscription(),
    (event) => event.onCreatedPlanetaryBoundary,
  ).map((value) {
    ref.read(entityCacheProvider.notifier).setSynced(value.id, value);
    return value.id;
  });
  final localCreations = planetaryBoundaryCreationsSink.stream;
  return StreamGroup.merge([onlineCreations, localCreations]);
});
