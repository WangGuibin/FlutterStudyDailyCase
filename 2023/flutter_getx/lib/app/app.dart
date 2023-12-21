import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../tabbar.dart';
import '../pages/home.dart';
import '../pages/search.dart';
import '../pages/myCenter.dart';
import '../pages/shopPage.dart';
import './searchMiddleware.dart';
import '../binding/shopBinding.dart';

class App {
  //路由表
  static String root = '/';
  static String home = '/home';
  static String search = '/search';
  static String myCenter = '/my';
  static String shop = '/shop';

  //路由和页面的关系
  static final routes = [
    GetPage(name: root, page: () => const MyTabbarPage()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
        name: search,
        page: () => const SearchPage(),
        transition: Transition.fade,
        //如果有多个中间件 还可以传一个优先级参数
        middlewares: [SearchMiddleware()]),
    GetPage(name: myCenter, page: () => const MyCenterPage()),
    GetPage(
        name: shop,
        page: () => const ShopPage(),
        bindings: [ShopControllerBinding()]), //绑定注入依赖 这不是全局依赖 而是页面级别的 区分于全局的注入
  ];
}
