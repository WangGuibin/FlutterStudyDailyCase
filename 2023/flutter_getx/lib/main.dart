import 'package:flutter/material.dart';
import 'package:flutter_tabbar_pages/controller/TabbarController.dart';
import './tabbar.dart';
import 'package:get/get.dart';
import './binding/binding.dart';
import './app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: AllControllerBinding(), //懒加载 用到才会创建 但又不会重复创建
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      defaultTransition: Transition.rightToLeft,
      getPages: App.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
