class Station {
  int fid;
  int id;
  String nimi;
  String osoite;
  int kapasiteet;
  double x;
  double y;

  Station({
    required this.fid,
    required this.id,
    required this.nimi,
    required this.osoite,
    required this.kapasiteet,
    required this.x,
    required this.y,
  });

  factory Station.fromJson(Map<String, dynamic> json) => Station(
        fid: json["fid"],
        id: json["id"],
        nimi: json["nimi"],
        osoite: json["osoite"],
        kapasiteet: json["kapasiteet"],
        x: json["x"]?.toDouble(),
        y: json["y"]?.toDouble(),
      );
}
