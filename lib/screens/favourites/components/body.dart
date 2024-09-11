// ignore_for_file: prefer_const_constructors


import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/providers/products.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Provider.of<Products>(context).favoriteItems;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Consumer<Products>(
          builder: (context, productsProvider,ch) {
            var products = productsProvider.favoriteItems;
            return Column(
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
            );
          }
        ),
      ),
    );
  }
}
