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
import './pages/buttons.dart';
import './pages/textfield.dart';
import './pages/checkbox.dart';
import './pages/datePicker.dart';
import './pages/banner.dart';
import './pages/dialog.dart';
import './pages/request.dart';

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
  '/buttons': (context, {arguments}) => ButtonWidgetPage(),
  '/textfield': (context, {arguments}) => TextfieldPage(),
  '/checkbox': (context, {arguments}) => CheckBoxPage(),
  '/datePicker': (context, {arguments}) => DatePickerPage(),
  '/banner': (context, {arguments}) => BannerPage(),
  '/dialog': (context, {arguments}) => DialogPage(),
  '/request': (context, {arguments}) => HttpRequestPage(),
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
