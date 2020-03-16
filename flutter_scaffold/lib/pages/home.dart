import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

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
    ];
    return Provide<MyCounter>(
      builder: (context, child, val) {
        int currentCount = Provide.value<MyCounter>(context).currentCount;
        return Scaffold(
          appBar: AppBar(
            title: Text("首页 $currentCount", style: TextStyle(color: Colors.white)),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.blue[300], Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
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
