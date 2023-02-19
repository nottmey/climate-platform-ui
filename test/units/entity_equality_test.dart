import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('planetary boundary equivalence', () {
    final pb = PlanetaryBoundary();
    pb.name = 'Test 1';
    final pbWithSameName = PlanetaryBoundary();
    pbWithSameName.name = 'Test 1';

    expect(pb, equals(pb));
    expect(pb.hashCode, pb.hashCode);

    expect(pb, equals(pbWithSameName));
    expect(pb.hashCode, pbWithSameName.hashCode);

    pbWithSameName.id = '1';
    expect(pb, isNot(equals(pbWithSameName)));
    expect(pb.hashCode, isNot(equals(pbWithSameName.hashCode)));
  });
}
