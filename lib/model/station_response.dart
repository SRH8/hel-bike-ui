import 'dart:convert';
import 'package:hel_bike_ui/model/station.dart';

StationResponse stationResponseFromJson(String str) => StationResponse.fromJson(json.decode(utf8.decode(str.codeUnits)));

class StationResponse {
  List<Station> content;
  int pageNo;
  int pageSize;
  int totalElements;
  int totalPages;
  bool last;

  StationResponse({
    required this.content,
    required this.pageNo,
    required this.pageSize,
    required this.totalElements,
    required this.totalPages,
    required this.last,
  });

  factory StationResponse.fromJson(Map<String, dynamic> json) =>
      StationResponse(
        content:
            List<Station>.from(json["content"].map((x) => Station.fromJson(x))),
        pageNo: json["pageNo"],
        pageSize: json["pageSize"],
        totalElements: json["totalElements"],
        totalPages: json["totalPages"],
        last: json["last"],
      );
}