import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int index) => _selectedIndex.value = index;
}
