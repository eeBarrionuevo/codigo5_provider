import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  String description = "CounterFinal";
  List<int> numbers = [];

  changeCounter() {
    counter++;
    notifyListeners();
  }
}
