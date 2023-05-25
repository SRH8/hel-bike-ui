class Journey {
  int id;
  DateTime departureDate;
  DateTime returnDate;
  int departureStationId;
  String departureStationName;
  int returnStationId;
  String returnStationName;
  int distanceCoveredM;
  int durationS;

  Journey({
    required this.id,
    required this.departureDate,
    required this.returnDate,
    required this.departureStationId,
    required this.departureStationName,
    required this.returnStationId,
    required this.returnStationName,
    required this.distanceCoveredM,
    required this.durationS,
  });

  factory Journey.fromJson(Map<String, dynamic> json) => Journey(
        id: json["id"],
        departureDate: DateTime.parse(json["departureDate"]),
        returnDate: DateTime.parse(json["returnDate"]),
        departureStationId: json["departureStationId"],
        departureStationName: json["departureStationName"],
        returnStationId: json["returnStationId"],
        returnStationName: json["returnStationName"],
        distanceCoveredM: json["distanceCoveredM"],
        durationS: json["durationS"],
      );
}
