import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Provide<MyCounter>(
      builder: (context, child, val) {
        int currentCount = Provide.value<MyCounter>(context).currentCount;
        return Scaffold(
          appBar: AppBar(title: Text("首页")),
          body: Center(
            child: Container(
              child: Text("当前计数: $currentCount"),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add, color: Colors.white, size: 44),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              Provide.value<MyCounter>(context).updateCount(currentCount);
            },
          ),
        );
      },
    );
  }
}
