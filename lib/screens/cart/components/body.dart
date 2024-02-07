// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable
import 'package:e_commerce/providers/cart.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import 'cart_item_card.dart';

class Body extends StatelessWidget {
  Cart cart;

  Body({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (context, index) {
            return CartItemCard(
              productId: cart.items.keys.toList()[index],
              cartItem: cart.items.values.toList()[index],
            );
          }),
    );
  }
}
