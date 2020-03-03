import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人中心")),
      body: Container(
        color: Colors.orange,
        child: Text("这是我的页面"),
      ),
    );
  }
}
