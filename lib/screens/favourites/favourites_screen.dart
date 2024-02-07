// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/custom_navigation_bar.dart';
import 'package:e_commerce/enums.dart';

import 'components/body.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  static String routeName = '/favourites';
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.favourite,),
    );
  }
}
