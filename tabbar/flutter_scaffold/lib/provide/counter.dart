import 'package:flutter/material.dart';

class MyCounter with ChangeNotifier {
  int currentCount = 0;
  updateCount(int index) {
    currentCount = index + 1;
    notifyListeners();
  }
}
