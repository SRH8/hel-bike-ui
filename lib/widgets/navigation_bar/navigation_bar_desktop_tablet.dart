import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_title.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_item.dart';
import 'package:hel_bike_ui/routing/route_names.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  const NavigationBarDesktopTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarTitle(navigationPath: homeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavigationItem(title: 'Stations', navigationPath: stationListRoute),
              SizedBox(width: 60),
              NavigationItem(title: 'Journeys', navigationPath: journeyListRoute)
            ],
          )
        ],
      ),
    );
  }
}