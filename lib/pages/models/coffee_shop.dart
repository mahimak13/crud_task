import 'package:coffee_provider_app/pages/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/c1.jpg",
    ),
    Coffee(
      name: "Latte",
      price: "4.90",
      imagePath: "lib/images/c2.png",
    ),
    Coffee(
      name: "Espresso",
      price: "5.10",
      imagePath: "lib/images/c3.jpg",
    ),
    Coffee(
      name: "Iced Coffee",
      price: "3.50",
      imagePath: "lib/images/c4.png",
    ),
    Coffee(
      name: "cappachino",
      price: "6.20",
      imagePath: "lib/images/c5.jpg",
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item to cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
