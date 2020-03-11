import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue_app/provider/cart_provider.dart' show Cart;
import 'package:shop_venue_app/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total'),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$ ${cart.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton(
                    child: Text(
                      'ORDER NOW',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'font 1',
                          color: Theme.of(context).accentColor),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (ctx, index) => CartItem(
              cart.cartItems.values.toList()[index].id,
              cart.cartItems.keys.toList()[index],
              cart.cartItems.values.toList()[index].price,
              cart.cartItems.values.toList()[index].quantity,
              cart.cartItems.values.toList()[index].name,
            ),
            itemCount: cart.itemInCart,
          ))
        ],
      ),
    );
  }
}
