import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<List> getCharacters() async {
    Uri uri = Uri.parse("https://rickandmortyapi.com/api/character");

    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      Map<String, dynamic> info = data["info"];
      List results = data["results"];
      return results;
    }
    return [];
  }
}
