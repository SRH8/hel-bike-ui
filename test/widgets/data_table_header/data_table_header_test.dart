import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hel_bike_ui/widgets/data_table_header/table_header.dart';

void main() {

  testWidgets('Table header widget is present and has a centered text', (widgetTester) async {
    await widgetTester.pumpWidget(const TableHeader(title: 'T'));

    final centerFinder = find.byType(Center);
    final textFinder = find.text('T');

    expect(centerFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });
}