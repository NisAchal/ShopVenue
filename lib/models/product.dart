import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageURL;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.imageURL,
    this.isFavourite = false,
  });
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
