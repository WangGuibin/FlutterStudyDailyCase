import 'package:flutter/material.dart';
import '../config/index.dart';

class DeleteListItemPage extends StatelessWidget {
  const DeleteListItemPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> dataList =
        List.generate(20, (index) => "List Item $index");
    return Scaffold(
      appBar: createAppBar(context, "左滑删除"),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          final item = dataList[index];
          return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                dataList.remove(item);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("$item has removed"),
                ));
              },
              background: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.red,
                child: Text("删除",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
              ),
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text(item),
              ));
        },
      ),
    );
  }
}
