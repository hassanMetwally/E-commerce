import 'package:e_commerce/components/rounded_icon_btn.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios_new,
              press: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
// class CustomAppBar extends PreferredSize {
//   final double rating;
//
//   CustomAppBar(
//       {required this.rating,
//         required super.child,
//         required super.preferredSize});
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SafeArea(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             horizontal: getProportionateScreenWidth(20),
//             vertical: getProportionateScreenWidth(5)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             RoundedIconBtn(
//               iconData: Icons.arrow_back_ios_new,
//               press: () {
//                 Navigator.pop(context);
//               },
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(14)),
//               child: Row(
//                 children: [
//                   Text(rating.toString(),
//                     style: const TextStyle(fontWeight: FontWeight.w400),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   SvgPicture.asset("assets/icons/Star Icon.svg"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
