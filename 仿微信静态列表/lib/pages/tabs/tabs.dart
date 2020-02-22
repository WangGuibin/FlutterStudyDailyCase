import 'package:flutter/material.dart';
import '../home/home.dart';
import '../category/category.dart';
import '../find/find.dart';
import '../settings/settings.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  //默认选中第一个
  int _currentIndex = 0;
  //标题
  final List<String> titles = [
    "微信",
    "通讯录",
    "发现",
    "我",
  ];
  //图标
  final List<Icon> icons = [Icon(Icons.chat_bubble), Icon(Icons.contact_mail), Icon(Icons.search), Icon(Icons.person)];

  // 各模块页面
  final List<Widget> pages = [HomePage(), CategoryPage(), FindPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.titles[this._currentIndex])),
      body: pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          unselectedItemColor: Colors.grey,
          fixedColor: Colors.red, //选中颜色
          iconSize: 30.0, //icon大小
          type: BottomNavigationBarType.fixed, //大于等于4个item需要设置该属性
          items: List.generate(
              titles.length, (index) => BottomNavigationBarItem(icon: icons[index], title: Text(titles[index])))),
    );
  }
}
