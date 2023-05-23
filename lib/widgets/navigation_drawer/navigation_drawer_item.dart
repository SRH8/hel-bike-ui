import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navbar_item.dart';

class NavigationDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const NavigationDrawerItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 30),
          NavigationItem(title: title)
        ],
      ),
    );
  }
}