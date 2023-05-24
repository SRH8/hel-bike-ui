import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class ApplicationDetails extends StatelessWidget {
  const ApplicationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      TextAlign textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 90 : 50;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 21 : 16;

      return Container(
        padding: const EdgeInsets.only(top: 3),
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ApplicationConstants.appTitle,
              style: Styles.appTitle(titleSize),
              textAlign: textAlignment,
            ),
            const SizedBox(height: 30),
            Text(
              ApplicationConstants.appDescription,
              style: Styles.appDescription(descriptionSize),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}