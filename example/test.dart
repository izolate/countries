import 'package:countries/countries.dart';

void main() {
  var countries = new Countries();
  var country = countries.findByName('Norway');
  print(country);
}
