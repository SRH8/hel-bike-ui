import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Text(
              'Helsinki \nBike App',
              style: ThemeText.homeNav
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavigationItem(title: 'Stations'),
              SizedBox(width: 60),
              _NavigationItem(title: 'Journeys')
            ],
          )
        ],
      ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  final String title;
  const _NavigationItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: ThemeText.navItem
    );
  }
}