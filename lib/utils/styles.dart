import 'package:flutter/material.dart';

abstract class ThemeText {

  static const TextStyle homeNav = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.black
  );
  
  static const TextStyle appDescription = TextStyle(
      fontSize: 21,
      height: 1.7
  );

  static const TextStyle appTitle = TextStyle(
    fontWeight: FontWeight.w800,
    height: 0.9,
    fontSize: 90,
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
}