// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class TopRoundedContainer extends StatelessWidget {
  TopRoundedContainer({
    required this.color,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
