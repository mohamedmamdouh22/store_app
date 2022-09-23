import 'package:flutter/material.dart';
import 'package:store_app/pages/home_page.dart';
import 'package:store_app/pages/update_product_page.dart';
import 'package:store_app/services/update_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: 
      {
        HomePage.id:(context) => HomePage(),
        UpdateProductPage.id:(context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,

    );
  }
}