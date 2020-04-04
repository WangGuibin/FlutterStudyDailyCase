import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:MyPlugin/MyPlugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
    initDartSendMessage();
  }

  Future<void> initDartSendMessage() async {
    String platformVersion;
    dynamic args; //接收返回的参数
    try {
      platformVersion = "";
      args = await MyPlugin.dartSendMessageToIOS({
        "floatNumber": 0.02,
        "number": 666,
        "str": "字符串",
        "arr": ["item1", "item2", "item3"],
        "dict": {"key": "value"}
      });
      print("iOS获取过来的数据如下:\n $args");
    } on PlatformException {
      platformVersion = "获取到版本号失败!!!";
    }
    if (!mounted) {
      return;
    }
    setState(() {
      _platformVersion = platformVersion;
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await MyPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
