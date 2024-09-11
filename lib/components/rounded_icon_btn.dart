import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key, required this.iconData, required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      child: TextButton (
       // padding: EdgeInsets.zero,
       // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
       // color: Colors.white,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
