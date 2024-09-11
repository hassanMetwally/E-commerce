// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/custom_navigation_bar.dart';
import 'package:e_commerce/enums.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
