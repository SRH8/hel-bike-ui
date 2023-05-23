import 'package:flutter/material.dart';

abstract class Styles {

  static const TextStyle homeNav = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.black
  );
  
  static TextStyle appDescription(double descriptionSize) => TextStyle(
      fontSize: descriptionSize,
      height: 1.7
  );

  static TextStyle appTitle(double titleSize) => TextStyle(
    fontWeight: FontWeight.w800,
    height: 0.9,
    fontSize: titleSize,
    color: Colors.black
  );

  static const TextStyle navItem = TextStyle(
      fontSize: 18
  );

  static const TextStyle imgDescription = TextStyle(
    fontSize: 12
  );

  static const TextStyle startNowButton = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w800
  );

  static BoxDecoration startNowButtonStyle = BoxDecoration(
    color: const Color.fromARGB(255, 31, 146, 229),
    borderRadius: BorderRadius.circular(5)
  );
}