import 'package:flutter/material.dart';
import 'package:flutter_toturials/List/Product.dart';
import 'package:flutter_toturials/List/ShoppingList.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      home: ShoppingList(
        products: <Product>[
          Product(name: 'Eggs'),
          Product(name: 'Flour'),
          Product(name: 'Chocolate chips'),
        ],
      ),
    );
  }
}
