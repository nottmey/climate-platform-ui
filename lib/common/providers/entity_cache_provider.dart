import 'package:climate/common/notifiers/entity_cache_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entityCacheProvider =
    StateNotifierProvider((ref) => EntityCacheNotifier());
