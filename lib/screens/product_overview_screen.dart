import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue_app/provider/cart_provider.dart';
import 'package:shop_venue_app/screens/cart_screen.dart';
import 'package:shop_venue_app/widgets/badge.dart';
import 'package:shop_venue_app/widgets/product_grid.dart';

enum FilterOptions { Favourites, All }

//-----First screen of our app---///

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool showFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Venue"),
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (FilterOptions selectedOption) {
                setState(() {
                  if (selectedOption == FilterOptions.Favourites) {
                    showFavourites = true;
                  } else {
                    showFavourites = false;
                  }
                });
              },
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text("Show Favourites"),
                  value: FilterOptions.Favourites,
                ),
                PopupMenuItem(
                  child: Text("Show All"),
                  value: FilterOptions.All,
                ),
              ],
            ),
            Consumer<Cart>(
              builder: (ctx, cart, child) {
                return Badge(
                  child: child,
                  value: cart.itemInCart.toString(),
                );
              },
              child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  }),
            ),
          ],
        ),
        body: ProductGrid(showFavourites));
  }
}
