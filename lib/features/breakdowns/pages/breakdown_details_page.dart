import 'dart:math' as math;

import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/common/utils/generate_id.dart';
import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/breakdowns/providers/breakdown_family.dart';
import 'package:climate/router.dart';

class BreakdownDetailsPage extends AppPageWidget {
  final String id;

  const BreakdownDetailsPage({
    super.key,
    required this.id,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final breakdownProvider = breakdownFamily(id);
    final titleProvider = breakdownProvider.select(
      (asyncDataPoint) => asyncDataPoint.whenData(
        (dataPoint) => 'Breakdown: ${dataPoint?.id}',
      ),
    );
    final components =
        ref.watch(breakdownProvider).valueOrNull?.components ?? [];

    return [
      AppHeaderSliver(titleProvider: titleProvider),
      SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: components
                .map(
                  (dataPoint) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.goToDataPointDetails(dataPoint.id);
                        },
                        icon: const Icon(Icons.info_outlined),
                      ),
                      Expanded(child: Text('Component: ${dataPoint.id}')),
                      IconButton(
                        onPressed: () async {
                          await execute(
                            DeleteDataPointMutation(
                              variables:
                                  DeleteDataPointArguments(id: dataPoint.id),
                            ),
                          );
                          ref.invalidate(breakdownProvider);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: FloatingActionButton.small(
            child: const Icon(Icons.add),
            onPressed: () async {
              await execute(
                CreateDataPointOnBreakdownMutation(
                  variables: CreateDataPointOnBreakdownArguments(
                    id: generateId(),
                    value: math.Random().nextDouble() * 100000,
                    parentBreakdownId: id,
                  ),
                ),
              );
              ref.invalidate(breakdownProvider);
            },
          ),
        ),
      ),
    ];
  }
}
