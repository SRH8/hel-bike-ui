import 'package:flutter/material.dart';
import 'package:hel_bike_ui/model/station/station.dart';

class StationDataSource extends DataTableSource {
  final List<Station> stations;

  StationDataSource({required this.stations});

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(stations[index].nimi)),
      DataCell(Text(stations[index].osoite)),
      DataCell(Text('${stations[index].kapasiteet}')),
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => stations.length;

  @override
  int get selectedRowCount => 0;
}