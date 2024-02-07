// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key, required this.icon, required this.press,
  }) : super(key: key);
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
      onTap: (){press();},
    );
  }
}
