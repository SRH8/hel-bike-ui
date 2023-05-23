import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class ApplicationDetails extends StatelessWidget {
  const ApplicationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            ApplicationConstants.appTitle,
            style: Styles.appTitle
          ),
          SizedBox(height: 30),
          Text(
            ApplicationConstants.appDescription,
            style: Styles.appDescription
          )
        ],
      ),
    );
  }
}