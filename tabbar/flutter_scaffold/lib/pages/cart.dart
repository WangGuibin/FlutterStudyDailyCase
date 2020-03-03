import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("购物车")),
      body: Container(
        color: Colors.orange,
        child: Text("这是购物车"),
      ),
    );
  }
}
