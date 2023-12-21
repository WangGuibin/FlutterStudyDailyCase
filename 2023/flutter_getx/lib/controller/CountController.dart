import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
