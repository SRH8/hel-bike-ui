import 'package:flutter/material.dart';
import 'package:hel_bike_ui/datasource/journey/journey_data_source.dart';
import 'package:hel_bike_ui/service/journey/journey_service.dart';
import 'package:hel_bike_ui/model/journey/journey.dart';
import 'package:hel_bike_ui/widgets/data_table/custom_table.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/widgets/data_table_header/table_header.dart';

class JourneysScreen extends StatefulWidget {
  const JourneysScreen({Key? key}) : super(key: key);

  @override
  State<JourneysScreen> createState() => _JourneysScreenState();
}

class _JourneysScreenState extends State<JourneysScreen> {
  final Future<List<Journey>> _journeys = JourneyService().getJourneys();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _journeys,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return SingleChildScrollView(
            child: CustomTable(
              tableHeader: const TableHeader(title: ApplicationConstants.journeysTableHeader),
              dataSource: JourneyDataSource(journeys: snapshot.data as List<Journey>),
              columns: const [
                DataColumn(label: Text('Departure', style: Styles.tableColumn)),
                DataColumn(label: Text('Return', style: Styles.tableColumn)),
                DataColumn(label: Text('Departure station', style: Styles.tableColumn)),
                DataColumn(label: Text('Return station', style: Styles.tableColumn)),
                DataColumn(label: Text('Distance covered (km)', style: Styles.tableColumn)),
                DataColumn(label: Text('Duration', style: Styles.tableColumn))
              ],
            )
          );
        } else if(snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}