/// first_page.dart
import 'package:flutter/material.dart';
import 'QiListView.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('demo page one'),
        ),
        body: Column(
          children: <Widget>[
            Text('First: $count', style: TextStyle(fontSize: 30)),
            Container(
              color: Colors.white54,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.6,
              child: ListView(
              children: <Widget>[
                // 列表条目
                ListTile(
                  // 标题
                  title: Text('ListTile1'),
                  // 子标题
                  subtitle: Text('subtile1'),
                  // 标题左侧的Widget
                  leading: Icon(Icons.security),
                  // 标题右侧的Widget
                  trailing: Icon(Icons.share),
                  onTap: () {
                    print('ListTile1');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("第二行"),
                  subtitle: Text("副标题u"),
                  leading: Icon(Icons.phone_android),
                  trailing: Icon(Icons.phone_iphone),
                  onTap: () {
                    print('ListTile2');
                  },
                ),
                //下划线
                Divider(
                  color: Colors.red,
                  height: 100,
                  indent: 20,
                  endIndent: 20,
                  thickness: 100,
                ),
                ListTile(
                  title: Text('ListTile2'),
                  subtitle: Text('subtile2'),
                  leading: Icon(Icons.photo),
                  trailing: Icon(Icons.share),
                  onTap: () {
                    print('ListTile2');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('ListTile3'),
                  subtitle: Text('subtile3'),
                  leading: Icon(Icons.phone_iphone),
                  trailing: Icon(Icons.share),
                  onTap: () {
                    print('ListTile3');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('跳转到个人信息'),
                  leading: Icon(Icons.phone_android),
                  trailing: Icon(Icons.share),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return QiListViewPage('iOS Dev');
                    // })).then((onValue) {
                    //   print('回传的数据：$onValue');
                    // });
                  },
                ),
              ],
            ),
            )
          ],
          //
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        ));
  }
}
