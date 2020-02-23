import 'package:flutter/material.dart';
import 'package:routes_demo/pages/category.dart';
import 'package:routes_demo/pages/goods.dart';
import 'package:routes_demo/pages/home.dart';
import 'package:routes_demo/pages/search.dart';
import 'tabbar.dart';
import './pages/detail.dart';
import './pages/customAppBar.dart';
import './pages/toutiao.dart';
import './pages/goods.dart';
import './pages/tabBarVC.dart';
import './pages/user.dart';

final Map<String, Function> routes = {
  '/': (context, {arguments}) => TabBarPageVC(),
  '/home': (context, {arguments}) => HomePage(),
  '/goods': (context, {arguments}) => GoodsPage(),
  '/detail': (context, {arguments}) => DetailPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/customAppBar': (context, {arguments}) => CustomAppBarPage(),
  '/toutiaoTab': (context, {arguments}) => TouTiaoTabPage(),
  '/categoryTab': (context, {arguments}) => CategoryPage(),
  '/tabBarVCDemo': (context, {arguments}) => TabBarControllerPage(),
  '/user': (context, {arguments}) => UserPage(),
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
