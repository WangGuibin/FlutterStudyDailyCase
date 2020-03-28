import 'package:flutter/material.dart';

AppBar createAppBar(BuildContext context, [String titleText = "导航栏标题未设置", bool haveBackIconButton = true]) {
  return AppBar(
      title: Text(
        titleText,
        style: TextStyle(color: Colors.white),
      ),
      leading: haveBackIconButton
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30.0),
              onPressed: () {
                Navigator.pop(context);
              })
          : IconButton(icon: Icon(Icons.menu, color: Colors.white, size: 30.0), onPressed: () {}),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue[100], Colors.blue[300], Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ));
}
