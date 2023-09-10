import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  String description = "CounterFinal";
  List<String> names = [
    "Carlos",
  ];

  changeCounter() {
    counter++;
    notifyListeners();
  }

  addName(String name) {
    names.add(name);
    notifyListeners();
  }
}
