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

    return [
      AppHeaderSliver(
        titleProvider: dataPointProvider.select(
          (state) => state.whenData(
            (dataPoint) => '${dataPoint?.id}: ${dataPoint?.value?.ceil()}',
          ),
        ),
      ),
    ];
  }
}
