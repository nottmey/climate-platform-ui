import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntityStateNotifier<T extends Entity>
    extends StateNotifier<EntityState<T>> {
  EntityStateNotifier({required T value})
      : super(EntityState(value: value, isDeleted: false));

  T get value => state.value;

  bool get isDeleted => state.isDeleted;

  void update(T newValue) {
    // TODO save to database
    state = EntityState(value: newValue, isDeleted: false);
  }

  void delete() {
    // TODO delete from database
    state = EntityState(value: state.value, isDeleted: true);
  }
}
