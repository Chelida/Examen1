import 'package:flutter/material.dart';

import 'package:shop_app/providers/product.dart';



class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
        id: "p1",
        title: "Red Shirt",
        description: "A red shirt - it is pretty red! ",
        price: 2500,
        imageUrl: "images/shirt.jpg"),
    Product(
        id: "p2",
        title: "Trousers",
        description: "A nice pair of trousers",
        price: 6500,
        imageUrl: "images/pantalon.jpg"),
    Product(
        id: "p3",
        title: "yellow scarf",
        description: "warm and cozy - exactly what you need for the winter.",
        price: 1500,
        imageUrl: "images/scarf.jpg"),
    Product(
        id: "p4",
        title: "A pan",
        description: "Prepare any meal you want",
        price: 2000,
        imageUrl: "images/pan.jpg"),
  ]; 

  // var _showFavoritesonly =false;
  List<Product>get items {
// if (_showFavoritesonly) {
//   return _items.where((productItem) => productItem.isFavorite ).toList();
// }

  return [..._items];
  }
  List<Product>get favoritesItems{
    return _items.where((productItem) => productItem.isFavorite ).toList();
  }

  Product findById(String id){
    return items.firstWhere((prod) => prod.id ==  id);
  }
//   void showFavoritesOnly(){
//     _showFavoritesonly = true;
//     notifyListeners();
//   }

// void showAll(){
//     _showFavoritesonly = false;
//     notifyListeners();
//   }

  void addProduct(){
    //  
    notifyListeners();
  }
}