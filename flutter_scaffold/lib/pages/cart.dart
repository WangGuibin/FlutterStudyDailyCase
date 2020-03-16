import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("购物车")),
      body: Container(
        color: Colors.orange,
        child: Image.asset("image/banner.jpg"),
      ),
    );
  }
}
