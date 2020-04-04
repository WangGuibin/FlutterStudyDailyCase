import 'dart:async';

import 'package:flutter/services.dart';

class MyPlugin {
  static const MethodChannel _channel = const MethodChannel('MyPlugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

// 发送字典Map参数 返回 泛型类型
  static Future<dynamic> dartSendMessageToIOS(Map<String, dynamic> args) {
    return _channel.invokeMethod("dartSendMessageToIOS", args);
  }
}
