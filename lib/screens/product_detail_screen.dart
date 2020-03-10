import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue_app/provider/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product_details_screen";
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context)
        .items
        .firstWhere((products) => products.id == id);
    //final loadedProduct = Provider.of<Products>(context).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
