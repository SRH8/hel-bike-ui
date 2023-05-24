import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/screens/home/home_screen_content_desktop.dart';
import 'package:hel_bike_ui/screens/home/home_screen_content_mobile_tablet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const HomeScreenContentMobileTablet(),
      tablet: (BuildContext context) => const HomeScreenContentMobileTablet(),
      desktop: (BuildContext context) => const HomeScreenContentDesktop(),
    );
  }
}