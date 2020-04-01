import 'package:flutter/material.dart';
import './tabbar.dart';
import './indicator.dart';
import './home.dart';
import './cart.dart';
import './category.dart';
import './me.dart';
import './search.dart';
import './circle.dart';
import './frosted_glass.dart';
import './card.dart';
import './transitionAnimation.dart';
import './deleteListItem.dart';
import './clickLike.dart';

final Map<String, Function> routes = {
  '/': (context, {arguments}) => TabBarPage(),
  '/home': (context, {arguments}) => HomePage(),
  '/category': (context, {arguments}) => CategoryPage(arguments: arguments),
  '/cart': (context, {arguments}) => CartPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/me': (context, {arguments}) => MePage(),
  '/indicator': (context, {arguments}) => IndicatorPage(),
  '/circle': (context, {arguments}) => FriendCirclePage(),
  '/frosted_glass': (context, {arguments}) => FrostedGlassDemo(),
  '/card': (context, {arguments}) => CardPage(),
  '/pagetransition': (context, {arguments}) => PageTransitionAnimationPage(),
  '/deleteListItem': (context, {arguments}) => DeleteListItemPage(),
  '/clicklike': (context, {arguments}) => ClickLikePage(),
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
