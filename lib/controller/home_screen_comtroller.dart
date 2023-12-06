import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  int addNumber = 0;

  List colorsList = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
  ];
  bool isClicked = false;
  int? colorIndex;

  increment() {
    addNumber++;
    notifyListeners();
  }

  decrement() {
    addNumber--;
    notifyListeners();
  }

  indexOfColorList({required int index}) {
    colorIndex = index;
    isClicked = true;
    notifyListeners();
  }
}
