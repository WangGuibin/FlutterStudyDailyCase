import 'package:flutter/material.dart';

class CustomAppBarPage extends StatelessWidget {
  const CustomAppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义AppBar"),
        centerTitle: true, //标题组件居中
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("菜单");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("搜索");
            },
          ),
        ],
        // bottom: ,//该属性一般放tabBar组件
      ),
      body: Center(
        child: Text("自定义AppBar"),
      ),
    );
  }
}
