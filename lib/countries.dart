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

    return code.isEmpty? null: code.elementAt(0);
  }

  /// Public methods ==============================================

  /// Returns <Map> of country data using alpha2 code as identifier
  /// e.g. countries.findByCode('GB');
  findByCode(String code) {
    code = code.toUpperCase();
    if (countryData.containsKey(code)) {
      countryData[code]['code'] = code;
      return countryData[code];
    }
  }

  /// Returns <Map> of country data using country name as identifier
  /// e.g. countries.findByName('United Kingdom');
  findByName(String name) {
    String code = _nameToAlpha2(name);
    return code.isEmpty? null: findByCode(code);
  }
}
