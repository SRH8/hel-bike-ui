import 'package:flutter/material.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/utils/locator.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavigationItem({Key? key, required this.title, required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(
            title,
            style: Styles.navItem,
            textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}