import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_title.dart';
import 'package:hel_bike_ui/routing/route_names.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const NavBarTitle(navigationPath: homeRoute)
        ],
      ),
    );
  }
}