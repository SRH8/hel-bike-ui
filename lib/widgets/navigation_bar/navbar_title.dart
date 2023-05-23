import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class NavBarTitle extends StatelessWidget {
  const NavBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      width: 150,
      child: Text(
          'Helsinki \nBike App',
          style: Styles.homeNav
      ),
    );
  }
}