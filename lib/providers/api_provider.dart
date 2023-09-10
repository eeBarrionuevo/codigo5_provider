import 'package:codigo5_provider/services/api_service.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  List characters = [];

  ApiService apiService = ApiService();

  Future<void> getCharactersProvider() async {
    characters = await apiService.getCharacters();
    notifyListeners();
  }
}
