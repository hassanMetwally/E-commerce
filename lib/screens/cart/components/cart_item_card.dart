// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/cart_item.dart';
import 'package:e_commerce/providers/cart.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.productId,
    required this.cartItem,
  });
  final String productId;
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(productId),
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
            color: Color(0xFFFFE6E6),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Spacer(),
            SvgPicture.asset('assets/icons/Trash.svg'),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10)),
        child: Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(80),
              child: AspectRatio(
                aspectRatio: .90,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(cartItem.image),
                ),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartItem.title),
                SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '\$${cartItem.price.toString()}',
                          style: TextStyle(color: kPrimaryColor)),
                      TextSpan(
                        text: '  x${cartItem.quantity.toString()}',
                        style: TextStyle(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context,listen: false).removeItem(productId);
      },
    );
  }
}
