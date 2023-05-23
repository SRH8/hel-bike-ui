import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/widgets/application_details/application_details.dart';
import 'package:hel_bike_ui/widgets/start_now_button/start_now_button.dart';

class HomeScreenContentMobileTablet extends StatelessWidget {
  const HomeScreenContentMobileTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ApplicationDetails(),
          SizedBox(
            height: 100,
          ),
          StartNowButton(title: ApplicationConstants.startNowButton)
        ],
      ),
    );
  }
}