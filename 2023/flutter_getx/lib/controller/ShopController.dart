import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var money = 0.obs;
  void costMoney() {
    money += 100;
    update();
  }

  @override
  void onInit() {
    print('shop oninit');
    super.onInit();
  }

  @override
  void onClose() {
    print('shop onClose');
    super.onClose();
  }
}
