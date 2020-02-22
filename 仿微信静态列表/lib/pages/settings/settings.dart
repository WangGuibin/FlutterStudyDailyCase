import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SettingsListView();
  }
}

class SettingsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: NetworkImage('https://i0.hdslb.com/bfs/face/28dca5ff98f6c688b2b244ba5bf5f6208cf78ac2.jpg@150w_150h.jpg'),
                radius: 50.0),
            title: Text("CoderWGB", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
            subtitle: Text("微信号: wgb--864562082🐎",
                style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w300, fontSize: 15.0)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          SizedBox(height: 20.0),
          Divider(
              height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
          ListTile(
            leading: Icon(Icons.check_circle_outline, color: Colors.green),
            title: Text("支付"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
              height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.lightBlueAccent),
            title: Text("收藏"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(height: 0.5, indent: 70.0, color: Colors.grey),
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.lightBlueAccent),
            title: Text("相册"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(height: 0.5, indent: 70.0, color: Colors.grey),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.lightBlueAccent),
            title: Text("卡包"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(height: 0.5, indent: 70.0, color: Colors.grey),
          ListTile(
            leading: Icon(Icons.insert_emoticon, color: Colors.orangeAccent),
            title: Text("表情"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
              height: 10.0, thickness: 10.0, indent: 0.0, endIndent: 0.0, color: Color.fromARGB(255, 245, 246, 247)),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.lightBlueAccent),
            title: Text("设置"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    );
  }
}
