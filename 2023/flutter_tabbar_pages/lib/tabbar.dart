import 'package:flutter/material.dart';
import './demoPage.dart';

class MyTabbarVC extends StatefulWidget {
  const MyTabbarVC({super.key});

  @override
  State<StatefulWidget> createState() => MainPage();
}

class MainPage extends State<StatefulWidget> {
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          DemoPage(title: '首页', bgColor: Colors.pinkAccent),
          DemoPage(title: '社区', bgColor: Colors.orangeAccent),
          DemoPage(title: '我的', bgColor: Colors.redAccent),
        ],
      ),
    );
  }
}
