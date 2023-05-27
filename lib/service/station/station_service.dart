import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hel_bike_ui/model/station/station.dart';
import 'package:hel_bike_ui/model/station/station_response.dart';
import 'package:http/http.dart' as http;

class StationService {

  final String _baseUrl = dotenv.get('BASE_URL');
  final int _pageSize = 457;

  Future<List<Station>> getStationsData(http.Client client) async {
    List<Station> stations = [];

    Uri uri = Uri.http(_baseUrl, 'api/v1/stations', {'pageSize': '$_pageSize'});

    final response = await http.get(uri);

    if(response.statusCode == 200) {
      StationResponse stationResponse = stationResponseFromJson(response.body);
      stations = stationResponse.content;

      return stations;
    }
    return stations;
  }
}