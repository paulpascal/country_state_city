import 'package:country_state_city/country_state_city.dart';

void main() async {
  // Get all countries
  final countries = await getAllCountries();
  // Get all states
  final states = await getAllStates();
  // Get all cities
  final cities = await getAllCities();

  // Get a country
  final country = await getCountryFromCode('AF');
  if (country != null) {
    final countryStates = await getStatesOfCountry(country.isoCode);

    final countryCitis = await getCountryCities(country.isoCode);
  }
}
