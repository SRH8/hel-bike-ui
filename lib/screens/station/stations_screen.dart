import 'package:flutter/material.dart';
import 'package:hel_bike_ui/datasource/station/station_data_source.dart';
import 'package:hel_bike_ui/model/station.dart';
import 'package:hel_bike_ui/service/station_service.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/widgets/table_header/table_header.dart';


class StationsScreen extends StatefulWidget {
  const StationsScreen({Key? key}) : super(key: key);

  @override
  State<StationsScreen> createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  final Future<List<Station>> _stations = StationService().getStationsData();
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _stations,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return SingleChildScrollView(
            child: PaginatedDataTable(
              columnSpacing: 100,
              horizontalMargin: 60,
              arrowHeadColor: Colors.black,
              rowsPerPage: 10,
              header: const TableHeader(title: ApplicationConstants.tableHeader),
              source: StationDataSource(stations: snapshot.data as List<Station>),
              columns: const [
                DataColumn(label: Text('Name', style: Styles.tableColumn)),
                DataColumn(label: Text('Address', style: Styles.tableColumn)),
                DataColumn(label: Text('Capacity', style: Styles.tableColumn))
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}