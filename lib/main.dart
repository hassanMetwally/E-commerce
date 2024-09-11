// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:e_commerce/providers/cart.dart';
import 'package:e_commerce/providers/products.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(ECommerce());
}

class ECommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),

      ],
      child: MaterialApp(
        title: 'E-commerce',
        theme: themeData(),
        //home: SplashScreen()
        initialRoute: SplashScreen.routeName,
        routes: routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
