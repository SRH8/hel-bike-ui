import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer_header.dart';

void main() {

  testWidgets('Navigator drawer header is present and has title and description', (widgetTester) async {
    await widgetTester.pumpWidget(const NavigationDrawerHeader());

    final containerFinder = find.byType(Container);
    final columnFinder = find.byType(Column);
    final titleFinder = find.text(ApplicationConstants.drawerHeader);
    final descriptionFinder = find.text(ApplicationConstants.drawerDescription);

    expect(containerFinder, findsOneWidget);
    expect(columnFinder, findsOneWidget);
    expect(titleFinder, findsOneWidget);
    expect(descriptionFinder, findsOneWidget);
  });
}