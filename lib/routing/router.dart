import 'package:flutter/material.dart';
import 'package:hel_bike_ui/routing/route_names.dart';
import 'package:hel_bike_ui/screens/home/home_screen.dart';
import 'package:hel_bike_ui/screens/journey/journeys_screen.dart';
import 'package:hel_bike_ui/screens/station/stations_screen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeScreen());
    case stationListRoute:
      return _getPageRoute(const StationsScreen());
    case journeyListRoute:
      return _getPageRoute(const JourneysScreen());
    default:
      return null;
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}