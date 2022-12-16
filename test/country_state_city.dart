import 'package:flutter_test/flutter_test.dart';

import 'package:country_state_city/country_state_city.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Country_State_City', () {
    test('coutries should be loaded', () async {
      final countries = await getAllCountries();

      expect(countries.isEmpty, false);
      expect(countries.first.runtimeType, Country);
    });

    test('states should be loaded', () async {
      final states = await getAllStates();

      expect(states.isEmpty, false);
      expect(states.first.runtimeType, State);
    });

    test('cities should be loaded', () async {
      final cities = await getAllCities();

      expect(cities.isEmpty, false);
      expect(cities.first.runtimeType, City);
    });
  });
}
