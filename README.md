# countries
Useful data for every country in the ISO 3166 standard

## Usage

Instantiate the class: `Countries countries = new Countries()`

### `countries.code(String)`

Lookup a country based on its 2-digit, [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.

**Example**
```
countries.code('GB');
```
**Response**:
```
{
  "capital": "London",
  "continent": "EU",
  "currency": "GBP",
  "languages": "en",
  "name": "United Kingdom",
  "native": "United Kingdom",
  "phone": 44,
  "code": "GB"
}
```

### `countries.name(String)`

Lookup a country by its official name in English.

**Example**
```
countries.name('South Korea');
```

**Response**
```
{
  "capital": "Seoul", 
  "continent": "AS",
  "currency": "KRW",
  "languages": "ko",
  "name": "South Korea",
  "native": "대한민국",
  "phone": 82,
  "code": "KR"
}
```
