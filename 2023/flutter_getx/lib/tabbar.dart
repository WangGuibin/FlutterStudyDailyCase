import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/search.dart';
import 'pages/myCenter.dart';
import './controller/TabbarController.dart';
import 'package:get/get.dart';

List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined, color: Colors.black54),
      label: '首页',
      activeIcon: Icon(
        Icons.home_filled,
        color: Colors.blue,
      )),
  const BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined, color: Colors.black54),
      label: '社区',
      activeIcon: Icon(
        Icons.search,
        color: Colors.blue,
      )),
  const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline, color: Colors.black54),
      label: '我的',
      activeIcon: Icon(
        Icons.person,
        color: Colors.blue,
      )),
];

class MyTabbarPage extends GetView<TabbarController> {
  const MyTabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: items,
            currentIndex: controller.selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              controller.selectedIndex = index;
              controller.update();
            },
          )),
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex,
            children: const [
              HomePage(),
              SearchPage(),
              MyCenterPage(),
            ],
          )),
    );
  }
}
