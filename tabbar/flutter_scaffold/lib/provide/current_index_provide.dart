import 'package:flutter/material.dart';

//切换底部导航
class CurrentIndexProvide with ChangeNotifier {
  int currentIndex = 0;
  setSelectIndex(int index) {
    currentIndex = index;
    notifyListeners(); //通知监听者
  }
}
