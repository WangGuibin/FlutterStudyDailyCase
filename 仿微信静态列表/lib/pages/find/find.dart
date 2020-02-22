import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  FindPage({Key key}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return FindListView();
  }
}

class FindListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.query_builder),
          title: Text("朋友圈"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
        ListTile(
          leading: Icon(Icons.monochrome_photos),
          title: Text("扫一扫"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
        ListTile(
          leading: Icon(Icons.bubble_chart),
          title: Text("看一看"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
        ListTile(
          leading: Icon(Icons.games),
          title: Text("游戏"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
        ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text("小程序"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(height: 1000.0, color: Color.fromARGB(255, 245, 246, 247)),
      ],
    );
  }
}
