import 'package:flutter/material.dart';
import 'package:hel_bike_ui/routing/route_names.dart';
import 'package:hel_bike_ui/routing/router.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/widgets/centered_view/centered_view.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer.dart' as drawer;
import 'package:hel_bike_ui/utils/locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

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
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: homeRoute,
                  )
                )
              ],
            ),
          ),
        )
    );
  }
}