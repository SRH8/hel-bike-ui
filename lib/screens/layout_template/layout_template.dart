import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hel_bike_ui/widgets/centered_view/centered_view.dart';
import 'package:hel_bike_ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:hel_bike_ui/widgets/navigation_drawer/navigation_drawer.dart' as drawer;

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const drawer.NavigationDrawer() : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: <Widget>[
                const AppNavigationBar(),
                Expanded(
                  child: child
                )
              ],
            ),
          ),
        )
    );
  }
}