import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  const NavigationItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: ThemeText.navItem
    );
  }
}