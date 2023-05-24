import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer_item.dart';
import 'package:hel_bike_ui/routing/route_names.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavigationDrawerItem(title: 'Home', icon: Icons.home, navigationPath: homeRoute),
          NavigationDrawerItem(title: 'Stations', icon: Icons.location_pin, navigationPath: stationListRoute),
          NavigationDrawerItem(title: 'Journeys', icon: Icons.pedal_bike, navigationPath: journeyListRoute)
        ],
      ),
    );
  }
}