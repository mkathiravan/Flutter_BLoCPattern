import 'package:flutterbloc/models/country_response.dart';
import 'package:flutterbloc/resources/country_api_provider.dart';

class Repository
{
  final moviesApiProvider = CountryApiProvider();

  Future<CountryResponse> fetchCountries() => moviesApiProvider.fetchCountryList();
}

