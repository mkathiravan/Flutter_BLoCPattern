import 'package:flutterbloc/models/country_response.dart';
import 'package:http/http.dart';
import 'dart:convert';

class CountryApiProvider
{

  Client client = new Client();

  Future<CountryResponse> fetchCountryList() async {
    final response = await client.get("http://restcountries.eu/rest/v2/all");
    if(response.statusCode == 200)
      {
        return CountryResponse.fronJson(json.decode(response.body));
      }
    else
      {
        throw Exception('Failed to load post');
      }
  }
}