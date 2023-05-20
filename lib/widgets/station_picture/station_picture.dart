import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class StationPicture extends StatelessWidget {
  const StationPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage(ApplicationConstants.bikeStationImg),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        const Text(
          ApplicationConstants.bikeStationImgCredits,
          style: ThemeText.imgDescription,
        )
      ],
    );
  }
}