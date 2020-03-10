import 'package:flutter/material.dart';
import 'package:shop_venue_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String id;
  ProductItem({this.title, this.imgUrl, this.id});
  @override
  Widget build(BuildContext context) {
    void _selectedProduct(BuildContext context) {
      Navigator.pushNamed(context, ProductDetailScreen.routeName,
          arguments: {'id': id, 'title': 'title'});
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: GridTile(
        child: GestureDetector(
            onTap: () => _selectedProduct(context),
            child: Image.network(imgUrl, fit: BoxFit.cover)),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
        header: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
