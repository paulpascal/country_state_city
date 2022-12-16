/// Handle timezone data such as: (name, gmtOffset, gmtOffsetName, abbreviation, tzName)
class Timezone {
  final String name;
  final String gmtOffset;
  final String gmtOffsetName;
  final String abbreviation;
  final String tzName;

  Timezone({
    required this.name,
    required this.gmtOffset,
    required this.gmtOffsetName,
    required this.abbreviation,
    required this.tzName,
  });

  Timezone fromJson(Map<String, dynamic> json) => Timezone(
        name: json['name'],
        gmtOffset: json['gmtOffset'],
        gmtOffsetName: json['gmtOffsetName'],
        abbreviation: json['abbreviation'],
        tzName: json['tzName'],
      );
}
