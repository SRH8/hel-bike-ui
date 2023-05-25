import 'dart:convert';
import 'package:hel_bike_ui/model/journey/journey.dart';

JourneyResponse journeyResponseFromJson(String str) => JourneyResponse.fromJson(json.decode(utf8.decode(str.codeUnits)));

class JourneyResponse {
  List<Journey> content;
  int pageNo;
  int pageSize;
  int totalElements;
  int totalPages;
  bool last;

  JourneyResponse({
    required this.content,
    required this.pageNo,
    required this.pageSize,
    required this.totalElements,
    required this.totalPages,
    required this.last,
  });

  factory JourneyResponse.fromJson(Map<String, dynamic> json) =>
      JourneyResponse(
        content:
            List<Journey>.from(json["content"].map((x) => Journey.fromJson(x))),
        pageNo: json["pageNo"],
        pageSize: json["pageSize"],
        totalElements: json["totalElements"],
        totalPages: json["totalPages"],
        last: json["last"],
      );
}