import 'package:flutter/material.dart';
import 'package:hel_bike_ui/routing/route_names.dart';
import 'package:hel_bike_ui/screens/home/home_screen.dart';
import 'package:hel_bike_ui/screens/journey/journeys_screen.dart';
import 'package:hel_bike_ui/screens/station/stations_screen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeScreen(), settings);
    case stationListRoute:
      return _getPageRoute(const StationsScreen(), settings);
    case journeyListRoute:
      return _getPageRoute(const JourneysScreen(), settings);
    default:
      return _getPageRoute(const HomeScreen(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => child, settings: settings);
}