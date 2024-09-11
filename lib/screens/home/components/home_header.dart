// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/providers/cart.dart';
import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          Consumer<Cart>(
            builder: (context, cart, child) {
              return IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
                numOfItems: cart.items.length,
              );
            },
            //child: ,
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            press: () {},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
