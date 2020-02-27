import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'data.dart';

main() async {
  var requestServer = await HttpServer.bind("192.168.0.104", 8089);
  print("Dart server 已启动");

  await for (HttpRequest request in requestServer) {
    handleMessage(request);
  }
  ;
}

void handleMessage(HttpRequest request) {
  try {
    if (request.method == "GET") {
      handleGET(request);
    } else if (request.method == "POST") {
      handlePOST(request);
    }
  } catch (e) {
    print("捕获了一个异常$e");
  }
}

void handleGET(HttpRequest request) {
  //直接获取url上的参数
  var action = request.uri.queryParameters["action"];
  if (action == "getProducts") {
    request.response
      ..statusCode = HttpStatus.OK
      ..write(JSON.encode(products))
      ..close();
  }

  if (action == "getNews") {
    request.response
      ..statusCode = HttpStatus.OK
      ..write(JSON.encode(news))
      ..close();
  }
}

void handlePOST(HttpRequest request) {
  /**
   * request.headers的内容包括以下这些
   * 
   * user-agent: Dart/2.8 (dart:io)
   * content-type: text/plain; charset=utf-8
   * accept-encoding: gzip
   * content-length: 53
   * host: 192.168.0.104:8089
  **/

  request.response
    ..statusCode = HttpStatus.OK
    ..write(JSON.encode(news))
    ..close();
}
