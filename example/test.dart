import 'package:countries/countries.dart';

void main() {
  Countries countries = new Countries();

  // name-based lookup
  var name = countries.name('United Kingdom');

  // country code-based lookup
  var code = countries.code('GB');

  // list all countries
  Map allMin = countries.list();
  Map allMax = countries.list(minified: false);

}
