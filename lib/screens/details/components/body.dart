// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/top_rounded_container.dart';
import 'package:e_commerce/providers/cart.dart';
import 'package:e_commerce/providers/product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  Product product;

  Body({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart =Provider.of<Cart>(context,listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * .15,
                            right: SizeConfig.screenWidth! * .15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child:
                              DefaultButton(text: "Add to card", press: () {
                                  cart.addItem(product.id.toString(), product.title, product.images[0], product.price);
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
