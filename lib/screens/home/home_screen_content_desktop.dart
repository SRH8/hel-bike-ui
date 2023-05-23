import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/widgets/application_details/application_details.dart';
import 'package:hel_bike_ui/widgets/start_now_button/start_now_button.dart';

class HomeScreenContentDesktop extends StatelessWidget {
  const HomeScreenContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        ApplicationDetails(),
        Expanded(
          child: Center(
            child: StartNowButton(title: ApplicationConstants.startNowButton),
          ),
        )
      ],
    );
  }
}