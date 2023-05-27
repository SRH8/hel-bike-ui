import 'package:flutter_test/flutter_test.dart';
import 'package:hel_bike_ui/utils/formatter.dart';

void main() {

  test('Date times should be formatted correctly', () {
    DateTime date = DateTime.parse('2021-05-31T23:57:25');
    String formattedDate = Formatter.formatDateTime(date);

    expect(formattedDate, '31.05.2021 23:57:25');
  });
  
  test('Meters should be converted to kilometers', () {
    int meters = 2000;
    double km = Formatter.metersToKms(meters);

    expect(km, 2.00);
  });

  test('A duration in seconds should be converted to hours, minutes and seconds', () {
    int seconds = 4000;
    String durationInHoursMinutesSeconds = Formatter.secondsToHoursMinutesSeconds(seconds);

    expect(durationInHoursMinutesSeconds, '01:06:40');
  });
}