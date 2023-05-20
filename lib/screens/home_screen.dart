import 'package:flutter/material.dart';
import 'package:hel_bike_ui/widgets/application_details/application_details.dart';
import 'package:hel_bike_ui/widgets/centered_view/centered_view.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:hel_bike_ui/widgets/station_picture/station_picture.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            AppNavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  ApplicationDetails(),
                  Expanded(
                    child: Center(
                      child: StationPicture(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}