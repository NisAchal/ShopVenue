import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue_app/models/product.dart';
import 'package:shop_venue_app/widgets/product_grid.dart';
import 'package:shop_venue_app/widgets/product_item.dart';
import 'package:shop_venue_app/provider/product_provider.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Shop Venue'),
        centerTitle: true,
      ),
      body: ProductGrid(),
    );
  }
}
