import 'package:flutter/material.dart';
import 'package:hel_bike_ui/model/journey/journey.dart';
import 'package:hel_bike_ui/utils/formatter.dart';

class JourneyDataSource extends DataTableSource {
  final List<Journey> journeys;
  JourneyDataSource({required this.journeys});

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(Formatter.formatDateTime(journeys[index].departureDate), textDirection: TextDirection.ltr)),
      DataCell(Text(Formatter.formatDateTime(journeys[index].returnDate), textDirection: TextDirection.ltr)),
      DataCell(Text(journeys[index].departureStationName, textDirection: TextDirection.ltr)),
      DataCell(Text(journeys[index].returnStationName, textDirection: TextDirection.ltr)),
      DataCell(Text('${Formatter.metersToKms(journeys[index].distanceCoveredM)}', textDirection: TextDirection.ltr)),
      DataCell(Text(Formatter.secondsToHoursMinutesSeconds(journeys[index].durationS), textDirection: TextDirection.ltr))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => journeys.length;

  @override
  int get selectedRowCount => 0;
}