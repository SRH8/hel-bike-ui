import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hel_bike_ui/routing/route_names.dart';
import 'package:hel_bike_ui/routing/router.dart';
import 'package:hel_bike_ui/screens/layout_template/layout_template.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';
import 'package:hel_bike_ui/utils/application_constants.dart';
import 'package:hel_bike_ui/utils/custom_scroll_behavior.dart';
import 'package:hel_bike_ui/utils/locator.dart';

void main() async {
  await dotenv.load();
  setUpLocator();
  usePathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      title: ApplicationConstants.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          shadowColor: Color.fromARGB(255, 31, 146, 229),
          surfaceTintColor: Color.fromARGB(255, 31, 146, 229),
          elevation: 5
        )
      ),
      builder: (context, child) => LayoutTemplate(child: child!),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}