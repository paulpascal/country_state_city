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

/// Get world wide cities list.
Future<List<City>> getAllCities() {
  return _loadCities();
}

/// Get the list of states that belongs to a state by the state ISO CODE and the country ISO CODE
Future<List<City>> getStateCities(String countryCode, String stateCode) async {
  final cities = await _loadCities();

  final res = cities.where((city) {
    return city.countryCode == countryCode && city.stateCode == stateCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res;
}

/// Get the list of cities that belongs to a country by the country ISO CODE
Future<List<City>> getCountryCities(String countryCode) async {
  final cities = await _loadCities();

  final res = cities.where((city) {
    return city.countryCode == countryCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res;
}
