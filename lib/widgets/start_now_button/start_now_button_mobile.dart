import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/utils/locator.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';
import 'package:hel_bike_ui/routing/route_names.dart';

class StartNowButtonMobile extends StatelessWidget {
  final String title;
  const StartNowButtonMobile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(stationListRoute);
        },
        child: Container(
          height: 60,
          alignment: Alignment.center,
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
