import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class StartNowButtonMobile extends StatelessWidget {
  final String title;
  const StartNowButtonMobile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: Styles.startNowButtonStyle,
      child: Text(
        title,
        style: Styles.callToAction,
      ),
    );
  }
}
