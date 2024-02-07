// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:e_commerce/providers/product.dart';
import 'package:e_commerce/providers/products.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/product_card.dart';
import 'section_title.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).items;

    return Column(
      children: [
        SectionTitle(
          text: 'Popular products',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                products.length,
                (index) => ChangeNotifierProvider.value(
                  value: products[index],
                  child: ProductCard(),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
