import 'dart:math' as math;

import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/common/utils/generate_id.dart';
import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/data_points/providers/quantification_data_points_family.dart';
import 'package:climate/features/quantifications/providers/quantifications_family.dart';

class QuantificationDetailsPage extends AppPageWidget {
  final String id;

  const QuantificationDetailsPage({
    super.key,
    required this.id,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final asyncDataPoints = ref.watch(quantificationDataPointsFamily(id));
    return [
      AppHeaderSliver(
        titleProvider: quantificationFamily(id).select(
          (state) => state.asyncEntity.whenData((value) => value.name),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: asyncDataPoints.when(
            skipLoadingOnRefresh: false,
            loading: () => const Text('loading'),
            error: (e, st) => Text('error $e'),
            data: (result) {
              return Column(
                children: (result.getQuantification?.dataPoints ?? [])
                    .map((e) => Text('Data Point: ${e.value?.ceil()}'))
                    .toList(),
              );
            },
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: FloatingActionButton.small(
            child: const Icon(Icons.add),
            onPressed: () async {
              await execute(
                CreateDataPointOnQuantificationMutation(
                  variables: CreateDataPointOnQuantificationArguments(
                    id: generateId(),
                    value: math.Random().nextDouble() * 100000,
                    parentQuantificationId: id,
                  ),
                ),
              );
              ref.invalidate(quantificationDataPointsFamily(id));
            },
          ),
        ),
      )
    ];
  }
}
