import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //生命周期: 初始化函数
    super.initState();
    _tabController = TabController(vsync: this, length: 3);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabController的使用"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "推荐"),
            Tab(text: "热门"),
            Tab(text: "同城"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text("内容内容内容...")),
          Center(child: Text("内容内容内容...")),
          Center(child: Text("内容内容内容...")),
        ],
      ),
    );
  }
}
