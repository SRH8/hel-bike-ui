import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/utils/locator.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';
import 'package:hel_bike_ui/routing/route_names.dart';

class StartNowButtonDesktopTablet extends StatelessWidget {
  final String title;
  const StartNowButtonDesktopTablet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(stationListRoute);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15) ,
          decoration: Styles.startNowButtonStyle,
          child: Text(
            title,
            style: Styles.callToAction,
          ),
        ),
      ),
    );
  }
}