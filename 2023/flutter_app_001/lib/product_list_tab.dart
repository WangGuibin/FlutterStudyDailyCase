import 'package:flutter/cupertino.dart';
import 'package:flutter_app_001/model/product.dart';
import 'package:provider/provider.dart';

import './model/app_state_model.dart';
import 'product_row_item.dart'; // NEW

class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<AppStateModel>(
        builder: (context, model, child) {
          List<Product> products = model.getProducts();
          return CustomScrollView(
            semanticChildCount: products.length,
            slivers: <Widget>[
              const CupertinoSliverNavigationBar(
                largeTitle: Text('Cupertino Store'),
              ),
              SliverSafeArea(
                // BEGINNING OF NEW CONTENT
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index < products.length) {
                        return ProductRowItem(
                          index: index,
                          product: products[index],
                          lastItem: index == products.length - 1,
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ) // END OF NEW CONTENT
            ],
          );
        },
      ),
    );
  }
}
