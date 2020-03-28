import 'package:flutter/material.dart';
import 'package:flutter_scaffold/config/index.dart';
import '../config/index.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "购物车", false),
      body: Container(
        color: Colors.orange,
        child: Image.asset("image/banner.jpg"),
      ),
    );
  }
}
