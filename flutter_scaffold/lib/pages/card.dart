import 'package:flutter/material.dart';
import '../config/index.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "卡片式布局"),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 2.0,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("拍照"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 2.0,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.album),
              title: Text("相册"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 2.0,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 2.0,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text("关于"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
