import 'package:flutter_test/flutter_test.dart';

import 'package:country_state_city/country_state_city.dart';

void main() {
  test('test if files are loaded', () async {
    final countries = await getAllCountries();
    final states = await getAllStates();
    final cities = await getAllCities();
    expect(countries.isEmpty, false);
    expect(states.isEmpty, false);
    expect(cities.isEmpty, false);
  });
}
