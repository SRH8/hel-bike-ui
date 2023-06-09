import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hel_bike_ui/model/journey/journey_response.dart';
import 'package:hel_bike_ui/model/journey/journey.dart';
import 'package:http/http.dart' as http;

class JourneyService {

  final String _baseUrl = dotenv.get('BASE_URL');
  final int _pageSize = 10000;

  Future<List<Journey>> getJourneys(http.Client client) async {
    List<Journey> journeys = [];

    Uri uri = Uri.http(_baseUrl, 'api/v1/journeys', {'pageSize': '$_pageSize'});

    final response = await http.get(uri);

    if(response.statusCode == 200) {
      JourneyResponse journeyResponse = journeyResponseFromJson(response.body);
      journeys = journeyResponse.content;

      return journeys;
    }
    return journeys;
  }
}