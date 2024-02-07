// ignore_for_file: prefer_const_constructors


import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/providers/products.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).favoriteItems;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            ...List.generate(
              products.length,
                  (index) => ChangeNotifierProvider.value(
                value: products[index],
                child: ProductCard(width: 335,aspectRatio: 1.5,),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
