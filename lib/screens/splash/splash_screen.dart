import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/splash_body.dart';

class SplashScreen extends StatefulWidget {

  static String routeName ='/splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    //you have to call it in your starting screen
    SizeConfig.init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
