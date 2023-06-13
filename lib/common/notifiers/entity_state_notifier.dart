import 'dart:async';

import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_cache_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EntityStateNotifier<T, I> extends StateNotifier<EntityState<T>> {
  final String id;
  final EntityCacheNotifier cache;
  final bool managesCreation;

  StreamSubscription<T>? updates;
  StreamSubscription<T>? deletion;

  EntityStateNotifier({
    required this.id,
    required this.cache,
    this.managesCreation = false,
  }) : super(
          EntityState(
            asyncEntity: cache.getAsync(id),
            phase: managesCreation
                ? EntityPhase.beforeCreation
                : EntityPhase.display,
          ),
        ) {
    if (!managesCreation) {
      _startSubscriptions();
      _initLoad();
    }
    // log('started ${managesCreation ? 'creation' : 'entity'} notifier $id ($T)');
  }

  @override
  void dispose() {
    _cancelSubscriptions();
    cache.setStale(id);
    // log('stopped ${managesCreation ? 'creation' : 'entity'} notifier $id ($T)');
    super.dispose();
  }

  void _setState({
    AsyncValue<T>? value,
    EntityPhase? phase,
  }) {
    if (mounted) {
      state = state.copyWith(
        asyncEntity: value ?? state.asyncEntity,
        phase: phase ?? state.phase,
      );
    }
  }

  void _startSubscriptions() {
    updates ??= subscribeToUpdates(id).listen((value) {
      cache.setSynced(id, value);
      _setState(value: AsyncValue.data(value));
    });
    deletion ??= subscribeToDeletion(id).listen((value) {
      cache.setSynced(id, value);
      _setState(
        value: AsyncValue.data(value),
        phase: EntityPhase.afterDeletion,
      );
      _cancelSubscriptions();
    });
  }

  void _cancelSubscriptions() {
    updates?.cancel();
    deletion?.cancel();
  }

  Future<void> _initLoad() async {
    if (cache.isStale(id)) {
      final value = await requestGet(id);
      if (value != null) {
        cache.setSynced(id, value);
        _setState(value: AsyncValue.data(value));
      } else {
        // TODO display error that entity was deleted just in that moment
        _setState(phase: EntityPhase.afterDeletion);
      }
    }
  }

  Future<void> createOrMerge(I input) async {
    if (state.inCreation) {
      _startSubscriptions();
      final optimisticValue = estimateCreation(input);
      cache.setOptimistic(id, optimisticValue);
      _setState(
        value: AsyncValue.data(optimisticValue),
        // so updates while creating are requested as merges
        phase: EntityPhase.beforeCreation,
      );
      final value = await requestCreation(input);
      cache.setSynced(id, value);
      _setState(value: AsyncValue.data(value));
    } else {
      final optimisticValue =
          estimateMerge(state.asyncEntity.value as T, input);
      cache.setOptimistic(id, optimisticValue);
      _setState(value: AsyncValue.data(optimisticValue));
      final value = await requestMerge(input);
      if (value != null) {
        cache.setSynced(id, value);
        _setState(value: AsyncValue.data(value));
      } else {
        // TODO display error that entity was deleted just in that moment
        _setState(phase: EntityPhase.afterDeletion);
      }
    }
  }

  Future<void> delete() async {
    _setState(phase: EntityPhase.afterDeletion);
    final entity = await requestDeletion(id);
    if (entity != null) {
      cache.setSynced(id, entity);
      _setState(value: AsyncValue.data(entity));
      _cancelSubscriptions();
    }
  }

  Stream<T> subscribeToUpdates(String id);

  Stream<T> subscribeToDeletion(String id);

  Future<T?> requestGet(String id);

  T estimateCreation(I input);

  Future<T> requestCreation(I input);

  T estimateMerge(T value, I input);

  Future<T?> requestMerge(I input);

  Future<T?> requestDeletion(String id);
}
