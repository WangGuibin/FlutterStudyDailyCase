import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ContactListView();
  }
}

class ContactListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person_add, color: Colors.orangeAccent),
          title: Text("新的盆友"),
          onTap: () {
            showTipsHUD(context, "新的盆友!!");
          },
        ),
        Divider(height: 0.5, indent: 70.0, color: Colors.grey),
        ListTile(
          leading: Icon(Icons.people, color: Colors.lightGreen),
          title: Text("群聊"),
          onTap: () {
            showTipsHUD(context, "群聊~~");
          },
        ),
        Divider(height: 0.5, indent: 70.0, color: Colors.grey),
        ListTile(
          leading: Icon(Icons.label, color: Colors.lightBlue),
          title: Text("标签"),
          onTap: () {
            showTipsHUD(context, "标签🏷");
          },
        ),
        Divider(height: 0.5, indent: 70.0, color: Colors.grey),
        ListTile(
          leading: Icon(Icons.public, color: Colors.lightBlueAccent),
          title: Text("公众号"),
          onTap: () {
            showTipsHUD(context, "公众号👌!!");
          },
        ),
      ],
    );
  }

  void showTipsHUD(BuildContext context, String tips) {
    var snackBar = SnackBar(
      content: Text(tips),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
