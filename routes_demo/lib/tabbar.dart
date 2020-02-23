import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/search.dart';
import './pages/category.dart';

class TabBarPageVC extends StatefulWidget {
  TabBarPageVC({Key key}) : super(key: key);

  @override
  _TabBarPageVCState createState() => _TabBarPageVCState();
}

class _TabBarPageVCState extends State<TabBarPageVC> {
  int selectIndex = 0;
  final List<Widget> modules = [
    HomePage(),
    CategoryPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("路由组件")),
      body: this.modules[this.selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.selectIndex,
        onTap: (int index) {
          setState(() {
            this.selectIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.store), title: Text("商品")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
        ],
      ),
    );
  }
}
