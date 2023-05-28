import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';
import 'package:hel_bike_ui/utils/locator.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';

class NavBarTitle extends StatelessWidget {
  final String navigationPath;
  const NavBarTitle({Key? key, required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: const Text(
            ApplicationConstants.navigationBarTitle,
            style: Styles.homeNav,
            textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}