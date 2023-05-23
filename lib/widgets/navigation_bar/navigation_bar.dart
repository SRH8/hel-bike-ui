import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar_desktop_tablet.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar_mobile.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavigationBarMobile(),
      desktop: (BuildContext context) => const NavigationBarDesktopTablet(),
      tablet: (BuildContext context) => const NavigationBarDesktopTablet(),
    );
  }
}