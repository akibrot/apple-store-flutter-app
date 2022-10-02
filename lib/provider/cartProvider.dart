import 'package:flutter/widgets.dart';

class cartProvider with ChangeNotifier {
  List _cartItems = [];
  double _totalPrice = 0;
  List get cartItems => _cartItems;
  double get totalPrice => _totalPrice;

  void addToCart(item) {
    _cartItems.add(item);
    print(_cartItems);
    notifyListeners();
  }

  void removeFromCart(item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  void getTotalPrice() {
    int i = 0;
    double totalPrice = 0;
    for (i = 0; i < _cartItems.length; i++) {
      totalPrice += _cartItems[i].price;
    }
    _totalPrice = totalPrice;
  }
}
