import 'package:e_commerce/models/cart_item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  addItem(String id, String title, String image, double price) {
    if (_items.containsKey(id)) {
      _items.update(
        id,
        (existingCartItem) => CartItem(
          id: id,
          title: title,
          image: image,
          price: price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          image: image,
          price: price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }
  removeItem(String id){
    _items.remove(id);
    notifyListeners();
  }

  totalAmount(){
    double total = 0;
    for(int i=0; i<= items.length; i++){
      total += items[i]!.price * items[i]!.quantity;
    }
    return total;
  }
}
