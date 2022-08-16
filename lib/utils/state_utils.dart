import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/state.dart';

Future<List<State>> _loadStates() async {
  final res = await rootBundle
      .loadString('packages/country_state_city/lib/assets/state.json');
  final data = jsonDecode(res) as List;
  return List<State>.from(
    data.map((item) => State.fromJson(item)),
  );
}

// Get a list of all States.
Future<List<State>> getAllStates() {
  return _loadStates();
}

// Get a list of States belonging to a specific  country.
Future<List<State>> getStatesOfCountry(String countryCode) async {
  final states = await _loadStates();

  final res = states.where((state) {
    return state.countryCode == countryCode;
  }).toList();
  res.sort((a, b) => a.name.compareTo(b.name));

  return res;
}

Future<State?> getStateByCode(
  String countryCode,
  String stateCode,
) async {
  final states = await _loadStates();

  final res = states.where((state) {
    return state.countryCode == countryCode && state.isoCode == stateCode;
  }).toList();

  return res.isEmpty ? null : res.first;
}
