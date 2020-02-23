import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments; //可选参数
  SearchPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
              "接收参数: ${this.arguments != null ? this.arguments['name'] : '并未传参'} ${this.arguments != null ? this.arguments['id'] : '0'}  \n点击按钮跳转详情页"),
          onPressed: () {
            Navigator.pushNamed(context, '/detail', arguments: {"id": "search -> detail"});
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  //装饰侧滑菜单头部的一个组件 可自定义的组件
                  child: DrawerHeader(
                      child: Text("\n\n\n你好,Flutter!!!", style: TextStyle(color: Colors.yellow, fontSize: 25.0)),
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        image: DecorationImage(
                            image: NetworkImage('https://www.itying.com/images/flutter/2.png'), fit: BoxFit.cover),
                      )),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home, color: Colors.green),
              ),
              title: Text("首页"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.category, color: Colors.lightBlue),
              ),
              title: Text("分类"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.search, color: Colors.yellow),
              ),
              title: Text("发现"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person, color: Colors.pink),
              ),
              title: Text("我的"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  //装饰侧滑菜单头部的一个组件 固定样式组件
                  child: UserAccountsDrawerHeader(
                      accountName: Text("CoderWGB"),
                      accountEmail: Text("864562082@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.itying.com/images/flutter/5.png'),
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        image: DecorationImage(
                            image: NetworkImage('https://www.itying.com/images/flutter/2.png'), fit: BoxFit.cover),
                      )))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.home, color: Colors.green),
            ),
            title: Text("首页"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pop(); //隐藏侧边栏
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.category, color: Colors.lightBlue),
            ),
            title: Text("分类"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.search, color: Colors.yellow),
            ),
            title: Text("发现"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person, color: Colors.pink),
            ),
            title: Text("我的"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pop(); //隐藏侧边栏
              Navigator.pushNamed(context, '/user');
            },
          ),
        ],
      )),
    );
  }
}
