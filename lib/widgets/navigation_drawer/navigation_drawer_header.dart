import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Styles.primaryColor,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            ApplicationConstants.drawerHeader,
            style: Styles.callToAction,
            textDirection: TextDirection.ltr,
          ),
          Text(
            ApplicationConstants.drawerDescription,
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    );
  }
}