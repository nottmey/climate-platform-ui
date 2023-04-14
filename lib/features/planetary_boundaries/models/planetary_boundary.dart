import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/models/entity.dart';

class PlanetaryBoundary extends PlanetaryBoundaryInput with Entity {
  PlanetaryBoundary({String? id}) {
    this.id = id;
  }

  PlanetaryBoundary.existing(PlanetaryBoundaryMixin mixin) {
    id = mixin.id;
    session = mixin.session;
    name = mixin.name;
    description = mixin.description;
  }

  PlanetaryBoundary copyWith({
    String? name,
    String? description,
  }) {
    // TODO use lib for this
    final copy = PlanetaryBoundary();
    copy.id = id;
    copy.session = session;
    copy.name = name ?? this.name;
    copy.description = description ?? this.description;
    return copy;
  }
}
