// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/chat/chat_screen.dart';
import 'package:e_commerce/screens/favourites/favourites_screen.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatelessWidget {
   CustomNavigationBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: selectedMenu == MenuState.home
                    ? kPrimaryColor
                    : inActiveColor,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(FavouritesScreen.routeName);
                },
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  color: selectedMenu == MenuState.favourite
                      ? kPrimaryColor
                      : inActiveColor,
                )),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ChatScreen.routeName);
                },
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  color: selectedMenu == MenuState.message
                      ? kPrimaryColor
                      : inActiveColor,
                )),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ProfileScreen.routeName);
                },
                icon: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  color: selectedMenu == MenuState.profile
                      ? kPrimaryColor
                      : inActiveColor,
                )),
          ],
        ),
      ),
    );
  }
}
