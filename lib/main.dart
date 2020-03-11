import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue_app/provider/cart_provider.dart';
import 'package:shop_venue_app/provider/product_provider.dart';
import 'package:shop_venue_app/screens/cart_screen.dart';
import 'package:shop_venue_app/screens/product_detail_screen.dart';
import 'package:shop_venue_app/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Venue',
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: "font1",
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          // ProductDetails.routeId: (context) => ProductDetails(),
        },
      ),
    );
  }
}
