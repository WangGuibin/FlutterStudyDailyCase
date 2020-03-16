import 'package:flutter/material.dart';
import './tabbar.dart';
import './indicator.dart';
import './home.dart';
import './cart.dart';
import './category.dart';
import './me.dart';
import './search.dart';
import './circle.dart';

final Map<String, Function> routes = {
  '/': (context, {arguments}) => TabBarPage(),
  '/home': (context, {arguments}) => HomePage(),
  '/category': (context, {arguments}) => CategoryPage(arguments: arguments),
  '/cart': (context, {arguments}) => CartPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/me': (context, {arguments}) => MePage(),
  '/indicator': (context, {arguments}) => IndicatorPage(),
  '/circle': (context, {arguments}) => FriendCirclePage(),
};

//命名路由传参的固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
    return route;
  }
};
