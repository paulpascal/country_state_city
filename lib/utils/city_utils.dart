import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/city.dart';

Future<List<City>> _loadCities() async {
  final res = await rootBundle
      .loadString('packages/country_state_city/lib/assets/city.json');
  final data = jsonDecode(res) as List;
  return List<City>.from(
    data.map((item) => City.fromJson(item)),
  );
}

// Get a list of all cities.
Future<List<City>> getAllCities() {
  return _loadCities();
}

// Get a list of cities belonging to a specific state and country.
Future<List<City>> getStateCities(String countryCode, String stateCode) async {
  final cities = await _loadCities();

  final res = cities.where((city) {
    return city.countryCode == countryCode && city.stateCode == stateCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res;
}

Future<List<City>> getCountryCities(String countryCode) async {
  final cities = await _loadCities();

  final res = cities.where((city) {
    return city.countryCode == countryCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res;
}
