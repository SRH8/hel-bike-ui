import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/data_table_header/table_header.dart';

class CustomTable extends StatelessWidget {
  final TableHeader tableHeader;
  final DataTableSource dataSource;
  final List<DataColumn> columns;

  const CustomTable({Key? key, required this.tableHeader, required this.dataSource, required this.columns}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columnSpacing: 100,
      horizontalMargin: 60,
      arrowHeadColor: Colors.black,
      rowsPerPage: 10,
      header: tableHeader,
      source: dataSource,
      columns: columns,
      showFirstLastButtons: true,
    );
  }
}