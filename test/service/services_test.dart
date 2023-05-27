import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hel_bike_ui/model/journey/journey.dart';
import 'package:hel_bike_ui/service/journey/journey_service.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:hel_bike_ui/model/station/station.dart';
import 'package:hel_bike_ui/service/station/station_service.dart';
import 'services_test.mocks.dart';

@GenerateMocks([http.Client])
void main() async {

  await dotenv.load();
  final String baseUrl = dotenv.get('BASE_URL');

  test('returns a list of stations if the http call completes successfully',() async {
    final client = MockClient();
    when(client
            .get(Uri.http(baseUrl, 'api/v1/stations', {'pageSize': '457'})))
         .thenAnswer((_) async =>
            http.Response('{"content":[{"fid":266,"id":204,"nimi":"A.I. Virtasen aukio","namn":"A. I. Virtanens plats",'
                '"name":"A.I. Virtasen aukio","osoite":"Gustaf Hällströmin katu 1","adress":"Gustaf Hällströms gata 1","kaupunki":"",'
                '"stad":"","operaattor":"","kapasiteet":24,"x":24.9620788508104,"y":60.2055418168461}],"pageNo":0,'
                '"pageSize":1,"totalElements":457,"totalPages":457,"last":false}', 200));

    expect(await StationService().getStationsData(client), isA<List<Station>>());
  });

  test('returns a list of journeys if the http call completes successfully',() async {
    final client = MockClient();
    when(client
            .get(Uri.http(baseUrl, 'api/v1/journeys', {'pageSize': '10000'})))
         .thenAnswer((_) async =>
            http.Response('{"content":[{"id":392649,"departureDate":"2021-05-01T00:00:11","returnDate":"2021-05-01T00:04:34",'
                '"departureStationId":138,"departureStationName":"Arabiankatu","returnStationId":138,"returnStationName":"Arabiankatu",'
                '"distanceCoveredM":0,"durationS":0}],"pageNo":0,"pageSize":1,"totalElements":3128740,"totalPages":3128740,"last":false}', 200));

    expect(await JourneyService().getJourneys(client), isA<List<Journey>>());
  });
}