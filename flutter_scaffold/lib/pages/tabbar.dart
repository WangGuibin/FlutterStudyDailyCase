import 'package:flutter/material.dart';
import 'package:flutter_scaffold/provide/current_index_provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import './home.dart';
import './category.dart';
import './cart.dart';
import './search.dart';
import './me.dart';

class TabBarPage extends StatelessWidget {
  //底部按钮
  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
    BottomNavigationBarItem(title: Text("分类"), icon: Icon(Icons.category)),
    BottomNavigationBarItem(
        title: Text("购物车"), icon: Icon(Icons.shopping_cart)),
    BottomNavigationBarItem(title: Text("搜索"), icon: Icon(Icons.search)),
    BottomNavigationBarItem(title: Text("我的"), icon: Icon(Icons.person)),
  ];

  final List<Widget> bodyWidgets = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    SearchPage(),
    MePage()
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Provide<CurrentIndexProvide>(
      builder: (context, child, val) {
        int currentIndex =
            Provide.value<CurrentIndexProvide>(context).currentIndex;
        return Scaffold(
          backgroundColor: Colors.red,
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.pink,
            unselectedItemColor: Colors.blue,
            items: bottomItems,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              Provide.value<CurrentIndexProvide>(context).setSelectIndex(index);
            },
          ),
          body: IndexedStack(children: bodyWidgets, index: currentIndex),
        );
      },
    );
  }
}
