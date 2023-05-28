import 'package:flutter_test/flutter_test.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_item.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_title.dart';

void main() {

  testWidgets('Navigation item is present and has a description', (widgetTester) async {
    await widgetTester.pumpWidget(const NavigationItem(title: 'T', navigationPath: 'P'));
    final titleFinder = find.text('T');

    expect(titleFinder, findsOneWidget);
  });
  
  testWidgets('Navigation bar title is present and has a text', (widgetTester) async {
    await widgetTester.pumpWidget(const NavBarTitle(navigationPath: 'P'));
    final titleFinder = find.text(ApplicationConstants.navigationBarTitle);

    expect(titleFinder, findsOneWidget);
  });
}