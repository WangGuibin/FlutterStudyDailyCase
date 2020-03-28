import 'package:flutter/material.dart';
import '../config/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "搜索", false),
      body: Container(
        color: Colors.orange,
        child: Text("这是搜索页面"),
      ),
    );
  }
}
