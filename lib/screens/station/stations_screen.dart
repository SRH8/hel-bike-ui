import 'package:flutter/material.dart';
import 'package:hel_bike_ui/datasource/station/station_data_source.dart';
import 'package:hel_bike_ui/model/station/station.dart';
import 'package:hel_bike_ui/service/station/station_service.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/widgets/data_table/custom_table.dart';
import 'package:hel_bike_ui/widgets/data_table_header/table_header.dart';
import 'package:http/http.dart' as http;

class StationsScreen extends StatefulWidget {
  const StationsScreen({Key? key}) : super(key: key);

  @override
  State<StationsScreen> createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  late final Future<List<Station>> _stations;

  @override
  void initState() {
    super.initState();
    _stations = StationService().getStationsData(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _stations,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return SingleChildScrollView(
            child: CustomTable(
              tableHeader: const TableHeader(title: ApplicationConstants.stationsTableHeader),
              dataSource: StationDataSource(stations: snapshot.data as List<Station>),
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