import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/country.dart';

Future<List<Country>> _loadCountries() async {
  final res = await rootBundle
      .loadString('packages/country_state_city/lib/assets/country.json');
  final data = jsonDecode(res) as List;
  return List<Country>.from(
    data.map((item) => Country.fromJson(item)),
  );
}

/// Get world wide countries list.
Future<List<Country>> getAllCountries() {
  return _loadCountries();
}

/// Get country from its ISO CODE
Future<Country?> getCountryFromCode(String countryCode) async {
  final cities = await _loadCountries();

  final res = cities.where((country) {
    return country.isoCode == countryCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res.isEmpty ? null : res.first;
}
