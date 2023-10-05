import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/common/utils/generate_id.dart';
import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/data_points/providers/data_point_family.dart';

class DataPointDetailsPage extends AppPageWidget {
  final String id;

  const DataPointDetailsPage({
    super.key,
    required this.id,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final dataPointProvider = dataPointFamily(id);
    final titleProvider = dataPointProvider.select(
      (asyncDataPoint) => asyncDataPoint.whenData(
        (dataPoint) => 'Data Point: ${dataPoint?.id}',
      ),
    );
    final valueTextProvider = dataPointProvider.select(
      (asyncDataPoint) =>
          'Value: ${asyncDataPoint.valueOrNull?.value?.toStringAsFixed(2)}',
    );

    return [
      AppHeaderSliver(titleProvider: titleProvider),
      SliverToBoxAdapter(
        child: Center(
          child: Text(ref.watch(valueTextProvider)),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: Column(
            children:
                (ref.watch(dataPointProvider).valueOrNull?.breakdowns ?? [])
                    .map((e) => Text('Breakdown: ${e.id}'))
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
                CreateBreakdownOnDataPointMutation(
                  variables: CreateBreakdownOnDataPointArguments(
                    id: generateId(),
                    parentDataPointId: id,
                  ),
                ),
              );
              ref.invalidate(dataPointProvider);
            },
          ),
        ),
      ),
    ];
  }
}
