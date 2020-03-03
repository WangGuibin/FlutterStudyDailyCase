import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provide<MyCounter>(
      builder: (context, child, val) {
        int currentCount = Provide.value<MyCounter>(context).currentCount;
        return Scaffold(
          appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.green, Colors.blue],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
              ),
              backgroundColor: Colors.blue,
              title: Container(
                  child: Text("分类",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  decoration:
                      BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.green, Colors.blue])))),
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
