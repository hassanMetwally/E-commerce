// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login success"),
      ),
      body: Body(),
    );
  }
}
