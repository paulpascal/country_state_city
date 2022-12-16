/// Handle city data such as: (name, countryCode, stateCode, latitude, longitude)
class City {
  final String name;
  final String countryCode;
  final String stateCode;
  final String? latitude;
  final String? longitude;

  City({
    required this.name,
    required this.countryCode,
    required this.stateCode,
    this.latitude,
    this.longitude,
  });

  static City fromJson(Map<String, dynamic> json) => City(
        name: json['name'],
        countryCode: json['countryCode'],
        stateCode: json['stateCode'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'countryCode': countryCode,
        'stateCode': stateCode,
        'latitude': latitude,
        'longitude': longitude,
      };
}
