// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/forgot_password/components/forgot_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName ='/forgot_password';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password'),
      ),
      body: ForgotBody(),
    );
  }
}
