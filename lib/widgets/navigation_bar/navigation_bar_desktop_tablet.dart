import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_title.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_item.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  const NavigationBarDesktopTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarTitle(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavigationItem(title: 'Stations'),
              SizedBox(width: 60),
              NavigationItem(title: 'Journeys')
            ],
          )
        ],
      ),
    );
  }
}