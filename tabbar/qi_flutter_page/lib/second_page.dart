/// second_page.dart
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('demo page two'),
        ),
        body: Center(
            child: Text('First: $count', style: TextStyle(fontSize: 30))
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        )
    );
  }
}