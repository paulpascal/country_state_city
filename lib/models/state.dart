/// Handle state data such as: (name, countryCode, isoCode, latitude, longitude)
class State {
  final String name;
  final String countryCode;
  final String isoCode;
  final String? latitude;
  final String? longitude;

  State({
    required this.name,
    required this.countryCode,
    required this.isoCode,
    this.latitude,
    this.longitude,
  });

  static State fromJson(Map<String, dynamic> json) => State(
        name: json['name'],
        countryCode: json['countryCode'],
        isoCode: json['isoCode'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'countryCode': countryCode,
        'isoCode': isoCode,
        'latitude': latitude,
        'longitude': longitude,
      };
}
