import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import './model/app_state_model.dart';

class ShoppingCartTab extends StatefulWidget {
  const ShoppingCartTab({super.key});

  @override
  _ShoppingCartTabState createState() => _ShoppingCartTabState();
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
          ],
        );
      },
    );
  }
}
