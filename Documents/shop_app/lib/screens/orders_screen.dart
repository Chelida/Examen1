import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart';
import '../widgets/app_drawer.dart';
import '../widgets/orders_item.dart';
import '../providers/orders.dart' show Orders;


class OrdersScreen extends StatelessWidget {
  static const routename = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Orders"),
           
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (ctx, i) => OrdersItem(orderData.orders[i]),
        
        ));
  }
}
