import 'package:flutter/material.dart';
import 'package:flutter_scaffold/provide/current_index_provide.dart';
import './config/index.dart';
import 'package:provide/provide.dart';
import './pages/tabbar.dart';
import './provide/counter.dart';

void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var counterProvide = MyCounter();
  var providers = Providers();

  providers
    ..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide))
    ..provide(Provider<MyCounter>.value(counterProvide));

  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: KSting.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TabBarPage(),
    );
  }
}
