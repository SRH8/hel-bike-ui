import 'package:flutter/material.dart';
import 'package:hel_bike_ui/datasource/station/station_data_source.dart';
import 'package:hel_bike_ui/model/station.dart';
import 'package:hel_bike_ui/service/station_service.dart';

class StationsScreen extends StatefulWidget {
  const StationsScreen({Key? key}) : super(key: key);

  @override
  State<StationsScreen> createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  StationService service = StationService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: service.getStationsData(),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return SingleChildScrollView(
            child: PaginatedDataTable(
              source: StationDataSource(stations: snapshot.data as List<Station>),
              columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Address')),
                DataColumn(label: Text('Capacity'))
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