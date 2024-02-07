// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/providers/product.dart';
import 'package:e_commerce/screens/details/details_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
  }) : super(key: key);

  final double width, aspectRatio;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, DetailsScreen.routeName, arguments:ProductDetailsArguments(product: product) );
        },
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.price}\$',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(17),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  InkWell(
                      onTap: () {
                        product.toggleFavoriteStatus();
                      },
                      borderRadius:
                          BorderRadius.circular(getProportionateScreenWidth(30)),
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                        width: getProportionateScreenWidth(28),
                        height: getProportionateScreenWidth(28),
                        decoration: BoxDecoration(
                            color: product.isFavourite
                                ? kPrimaryColor.withOpacity(0.15)
                                : kSecondaryColor.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                            color: product.isFavourite
                                ? Color(0xFFFF4848)
                                : Color(0xFFDBDEE4)),
                      ))
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
