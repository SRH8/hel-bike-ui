import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/screens/home/home_screen_content_desktop.dart';
import 'package:hel_bike_ui/screens/home/home_screen_content_mobile_tablet.dart';
import 'package:hel_bike_ui/widgets/centered_view/centered_view.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer.dart' as drawer;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const drawer.NavigationDrawer() : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: <Widget>[
                const AppNavigationBar(),
                Expanded(
                  child: ScreenTypeLayout.builder(
                    mobile: (BuildContext context) => const HomeScreenContentMobileTablet(),
                    tablet: (BuildContext context) => const HomeScreenContentMobileTablet(),
                    desktop: (BuildContext context) => const HomeScreenContentDesktop(),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}