import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:shop_venue_app/models/product.dart';
import 'package:shop_venue_app/provider/product_provider.dart';
import 'package:shop_venue_app/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 3,
      ),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, index) => ProductItem(
          id: loadedProducts[index].id,
          title: loadedProducts[index].title,
          imgUrl: loadedProducts[index].imageURL),
    );
  }
}
