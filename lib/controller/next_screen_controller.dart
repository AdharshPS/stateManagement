import 'package:flutter/material.dart';

class NextScreenController with ChangeNotifier {
  Color secondColor = Colors.white;

  secondScreenColor({required Color selectedColor}) {
    secondColor = selectedColor;
    notifyListeners();
  }
}
