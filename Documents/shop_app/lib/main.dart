import 'package:flutter/material.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(
     value: Products(),),
     ChangeNotifierProvider.value(
     value: Cart(),),
     ChangeNotifierProvider.value(
     value: Orders(),),
    ] ,
          child: MaterialApp(
        title: 'my shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routename :(ctx) => CartScreen(),
          OrdersScreen.routename :(ctx) => OrdersScreen(),
          },
      ),
    );
  }
}
