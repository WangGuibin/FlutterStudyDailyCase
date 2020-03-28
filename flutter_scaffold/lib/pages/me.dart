import 'package:flutter/material.dart';
import '../config/index.dart';

class MePage extends StatelessWidget {
  const MePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "个人中心", false),
      body: Container(
        color: Colors.orange,
        child: Text("这是我的页面"),
      ),
    );
  }
}
