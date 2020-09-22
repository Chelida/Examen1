import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String;
    final loadedproduct =
        Provider.of<Products>(context, listen: false).findById(productID);

    // is hte id
    // ...
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedproduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              child: Image.asset(
                loadedproduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${loadedproduct.price}',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                loadedproduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
