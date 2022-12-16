# country_state_city

![version](https://img.shields.io/badge/version-0.1.3-blue.svg) ![version](https://img.shields.io/badge/NullSefety-True-brightgreen)

A flutter package to display list of world wide Countries, States and Cities. It also allows to get a list of States and Cities depends on given country (by ISO CODE).

## How to Use

To use this Package, add `country_state_city` as a [dependency in your pubspec.yaml](https://flutter.io/platform-plugins/).

```dart
// import country_state_city package
import 'package:country_state_city/country_state_city.dart';
```

```dart
// Get all countries
final countries = await getAllCountries();

// Get all states that belongs to a country by country ISO CODE
final states = await getStatesOfCountry('AF'); // Afghanistan
```

## APIs

| Function                                                                  | Description                                                                                   |
| ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `Future<List<Country>> getAllCountries()`                                 | Get world wide countries list.                                                                |
| `Future<Country?> getCountryFromCode(String countryCode)`                 | Get country from its ISO CODE                                                                 |
| `Future<List<State>> getAllStates()`                                      | Get world wide states list.                                                                   |
| `Future<List<State>> getStatesOfCountry(String countryCode)`              | Get the list of states that belongs to a country by the country ISO CODE                      |
| `Future<State?> getStateByCode(String countryCode, String stateCode,)`     | Get a state from its code and its belonging country code                                      |
| `Future<List<City>> getAllCities()`                                       | Get world wide cities list.                                                                   |
| `Future<List<City>> getStateCities(String countryCode, String stateCode)` | Get the list of states that belongs to a state by the state ISO CODE and the country ISO CODE |
| `Future<List<City>> getCountryCities(String countryCode)`                 | Get the list of cities that belongs to a country by the country ISO CODE                      |


## Classes

| Class    | Description                                                                                                             |
| -------- | ----------------------------------------------------------------------------------------------------------------------- |
| Country  | Handle country data such as: (_name_, _isoCode_, _phoneCode_, _flag_, _currency_, _latitude_, _longitude_, _timezones_) |
| State    | Handle state data such as: (_name_, _countryCode_, _isoCode_, _latitude_, _longitude_)                                  |
| City     | Handle city data such as: (_name_, _countryCode_, _stateCode_, _latitude_, _longitude_)                                 |
| Timezone | Handle timezone data such as: (_name_, _gmtOffset_, _gmtOffsetName_, _abbreviation_, _tzName_)                          |

### Special Thanks to

- [Harpreet Singh](https://github.com/harpreetkhalsagtbit)
