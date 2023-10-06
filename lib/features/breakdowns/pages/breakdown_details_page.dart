import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/breakdowns/providers/breakdown_family.dart';

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

    return [
      AppHeaderSliver(titleProvider: titleProvider),
    ];
  }
}
