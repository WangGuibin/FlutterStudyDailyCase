import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("搜索")),
      body: Container(
        color: Colors.orange,
        child: Text("这是搜索页面"),
      ),
    );
  }
}
