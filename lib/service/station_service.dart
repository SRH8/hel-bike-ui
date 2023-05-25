import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hel_bike_ui/model/station/station.dart';
import 'package:hel_bike_ui/model/station/station_response.dart';
import 'package:http/http.dart' as http;

class StationService {

  final String _baseUrl = dotenv.get('BASE_URL');

  Future<List<Station>> getStationsData() async {
    List<Station> stations = [];
    int currentPage = 0;
    Uri uri = Uri.http(_baseUrl, 'api/v1/stations', {'pageNo': '$currentPage'});

    final response = await http.get(uri);

    if(response.statusCode == 200) {
      StationResponse stationResponse = stationResponseFromJson(response.body);
      stations = stationResponse.content;

      return stations;
    }
    return stations;
  }
}