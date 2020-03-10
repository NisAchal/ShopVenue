import 'package:flutter/cupertino.dart';
import 'package:shop_venue_app/models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: "first",
      title: "Laptop",
      price: 2000.0,
      description: " The best Laptop ",
      imageURL:
          "https://i.dell.com/sites/csimages/Video_Imagery/all/xps_7590_touch.png",
      isFavourite: false,
    ),
    Product(
      id: "second",
      title: "Watch",
      price: 4000.0,
      description: " The best watch ",
      imageURL:
          "https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m116610lv-0002.png?imwidth=1024",
      isFavourite: false,
    ),
    Product(
      id: "third",
      title: "shoe",
      price: 200.0,
      description: " The best shoe ",
      imageURL:
          "https://rukminim1.flixcart.com/image/714/857/jmwch3k0/shoe/j/y/n/dg-292-white-blue-patti-10-digitrendzz-white-original-imaf9p36fkykfjqt.jpeg?q=50",
      isFavourite: false,
    ),
    Product(
      id: "fourth",
      title: "T-Shirt",
      price: 1000,
      description: "Premium Cotton T-Shirt",
      imageURL:
          "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-9/46245129_2178591129050867_1617584155116175360_n.png?_nc_cat=110&_nc_sid=8024bb&_nc_ohc=tmlSik3prqIAX9OE3K4&_nc_ht=scontent.fktm8-1.fna&oh=ca17fce650324a77631e8834af90b479&oe=5E82A84C",
      isFavourite: false,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    // ignore: unrelated_type_equality_checks
    return _items.firstWhere((products) => products.id == findById);
  }
}
