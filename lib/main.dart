import 'package:flutter/material.dart';
import 'package:flutter_toturials/Product.dart';
import 'package:flutter_toturials/ShoppingList.dart';

void main() => runApp(MaterialApp(
  title: 'Shopping App',
  home: ShoppingList(
    products: <Product>[
      Product(name: 'Eggs'),
      Product(name: 'Flour'),
      Product(name: 'Chocolate chips'),
    ],
  ),
)
);

