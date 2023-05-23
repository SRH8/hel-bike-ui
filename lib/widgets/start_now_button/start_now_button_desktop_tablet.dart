import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class StartNowButtonDesktopTablet extends StatelessWidget {
  final String title;
  const StartNowButtonDesktopTablet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15) ,
      decoration: Styles.startNowButtonStyle,
      child: Text(
        title,
        style: Styles.startNowButton,
      ),
    );
  }
}