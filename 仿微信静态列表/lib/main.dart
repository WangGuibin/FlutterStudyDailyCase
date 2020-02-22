import 'package:flutter/material.dart';
import 'pages/tabs/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "底部导航",
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        home: TabBarPage());
  }
}
