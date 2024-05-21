import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'KD16 ASW EP',
        price: '240',
        description: 'Basketball Shoes',
        imagePath: 'lib/images/nike-8.png'),
    Shoe(
        name: 'Nike Revolution 7',
        price: '120',
        description: "Men's Road Running Shoes",
        imagePath: 'lib/images/nike-2.png'),
    Shoe(
        name: 'Nike Zoom Fly 5',
        price: '190',
        description: "Men's Road Running Shoes",
        imagePath: 'lib/images/nike-4.png'),
    Shoe(
        name: 'KD16 EP',
        price: '220',
        description: 'Basketball Shoes',
        imagePath: 'lib/images/nike-9.png'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to Cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoe from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
