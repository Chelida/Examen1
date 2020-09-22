import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/product.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);
  
  @override
  Widget build(BuildContext context) {
  final produc =  Provider.of<Product>(context,listen:false);
  final cart =  Provider.of<Cart>(context,listen:false);
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: produc.id);
            },
            child: Image.asset(
              produc.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Consumer<Product>(
      builder: (ctx,product,_)=> IconButton(
              icon: Icon(produc.isFavorite ? Icons.favorite :Icons.favorite_border),
              onPressed: () {
                produc.toggelFavoriteStatut();
              },
              color: Theme.of(context).accentColor,
            ),
            
            ),
            title: Text(
              produc.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                cart.addItem(produc.id, produc.price,produc.title);
              },
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      
           
    );
  }
}
