import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMiddleware extends GetMiddleware {
  //路由重定向
  @override
  RouteSettings? redirect(String? route) {
    // if (route == '/search') {
    //     //不能写一样的 会死循环
    //   return const RouteSettings(name: '/search');
    // }
    //可以在这里拦截路由的一些操作
    return null;
  }
}
