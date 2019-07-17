import 'package:flutter/material.dart';
import 'package:flutter_toturials/Product.dart';
import 'package:flutter_toturials/ShoppingList.dart';
import 'package:flutter_toturials/Layouts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Shopping App',
//      home: ShoppingList(
//        products: <Product>[
//          Product(name: 'Eggs'),
//          Product(name: 'Flour'),
//          Product(name: 'Chocolate chips'),
//        ],
//      ),
    home: Layouts(),
    );
  }
}
