import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class TableHeader extends StatelessWidget {
  final String title;
  const TableHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Styles.tableHeader,
        textAlign: TextAlign.center,
      ),
    );
  }
}