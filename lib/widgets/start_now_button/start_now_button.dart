import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/widgets/start_now_button/start_now_button_desktop_tablet.dart';
import 'package:hel_bike_ui/widgets/start_now_button/start_now_button_mobile.dart';

class StartNowButton extends StatelessWidget {
  final String title;
  const StartNowButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>  StartNowButtonMobile(title: title),
      tablet: (BuildContext context) =>  StartNowButtonDesktopTablet(title: title),
      desktop: (BuildContext context) => StartNowButtonDesktopTablet(title: title),
    );
  }
}