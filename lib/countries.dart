library Countries;

import 'dart:io';
import 'data/data.dart';

class Countries {

  Map _codes;

  Countries() {
    // {alpha2_code: full_name}
    this._codes = {};
    for (var key in countryData.keys) {
      this._codes[key] = countryData[key]['name'];
    }
  }

  /// Private methods =============================================

  /// Converts alpha2 code to country name
  /// e.g. _alpha2ToName('GB'); -> 'United Kingdom'
  _alpha2ToName(code) {
    return _codes[code];
  }

  /// Converts country name to alpha2 code
  /// e.g. _nameToAlpha2('United Kingdom'); -> 'GB'
  _nameToAlpha2(countryName) {
    // filter _codes: return key where value is countryName
    final code = new Map.fromIterable(
      _codes.keys.where((k) => _codes[k] == countryName),
      value: (k) => _codes[k]
    ).keys;

    return code.isEmpty? code: code.elementAt(0);
  }

  /// Public methods ==============================================

  /// Returns <Map> of country data using alpha2 code as identifier
  /// e.g. countries.findByCode('GB');
  code(String query) {
    query = query.toUpperCase();
    if (countryData.containsKey(query)) {
      countryData[query]['code'] = query;
      return countryData[query];
    }
  }

  /// Returns <Map> of country data using country name as identifier
  /// e.g. countries.findByName('United Kingdom');
  name(String query) {
    String alpha2 = _nameToAlpha2(query);
    return alpha2.isEmpty? null: code(alpha2);
  }

  list({ bool minified: true }) {
    if ( minified ) {
      return _codes;
    } else {
      return countryData;
    }
  }

}
