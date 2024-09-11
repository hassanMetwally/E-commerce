// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/custom_navigation_bar.dart';
import 'package:e_commerce/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = '/chat';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.message),
    );
  }
}
