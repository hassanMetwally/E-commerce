// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';


class SignUpScreen extends StatefulWidget {
  static String routeName = '/Sign_up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Body(),
    );
  }
}
