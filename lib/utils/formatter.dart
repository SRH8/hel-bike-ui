import 'package:intl/intl.dart';

class Formatter {

  static String formatDateTime(final DateTime date) {
    final DateFormat dateFormatter = DateFormat('dd.MM.yyyy HH:mm:ss');

    return dateFormatter.format(date);
  }

  static double metersToKms(final int meters) {
    final double kms = meters / 1000;

    return double.parse((kms).toStringAsFixed(2));
  }

  static String secondsToHoursMinutesSeconds(final int seconds) {
    final Duration duration = Duration(seconds: seconds);

    return _printDuration(duration);
  }

  static String _printDuration(final Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}