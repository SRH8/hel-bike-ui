import 'package:flutter/material.dart';
import 'package:hel_bike_ui/utils/styles.dart';

class StartNowButton extends StatelessWidget {
  final String title;
  const StartNowButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15) ,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 31, 146, 229),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        title,
        style: ThemeText.startNowButton,
      ),
    );
  }
}
