import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';
import '../config/index.dart';

class HomeDataModel {
  final String name;
  final String routeName;
  final Map argsMap;
  HomeDataModel({this.name, this.routeName, this.argsMap});
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<HomeDataModel> dataList = [
      HomeDataModel(name: "自定义按钮组件和指示器demo展示", routeName: "/indicator", argsMap: {}),
      HomeDataModel(name: "类似盆友圈展示", routeName: "/circle", argsMap: {}),
      HomeDataModel(name: "毛玻璃效果", routeName: "/frosted_glass", argsMap: {}),
      HomeDataModel(name: "卡片效果", routeName: "/card", argsMap: {}),
      HomeDataModel(name: "转场动画效果", routeName: "/pagetransition", argsMap: {}),
      HomeDataModel(name: "左滑删除效果", routeName: "/deleteListItem", argsMap: {}),
    ];
    return Provide<MyCounter>(
      builder: (context, child, val) {
        int currentCount = Provide.value<MyCounter>(context).currentCount;
        return Scaffold(
          appBar: createAppBar(context, "首页 $currentCount", false),
          body: Container(
              child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
              String name = dataList[index].name;
              String routeName = dataList[index].routeName;
              Map args = dataList[index].argsMap;
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(name),
                    onTap: () {
                      Navigator.of(context).pushNamed(routeName, arguments: args);
                    },
                  ),
                  Divider(),
                ],
              );
            },
          )),
          floatingActionButton: FloatingActionButton(
            heroTag: "你大爷的",
            child: Icon(Icons.add, color: Colors.white, size: 44),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              Provide.value<MyCounter>(context).updateCount(currentCount);
            },
          ),
        );
      },
    );
  }
}
