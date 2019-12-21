/// home.dart
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.music_video), title: Text('听')),
    BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
  ];

  final bodyList = [FirstPage(), SecondPage(), ThirdPage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: items, currentIndex: currentIndex, onTap: onTap),
        // body: bodyList[currentIndex]
        body: IndexedStack(
          index: currentIndex,
          children: bodyList,
        ));
  }
}
