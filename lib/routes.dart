// ignore_for_file: prefer_const_constructors


import 'dart:ui';

import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/chat/chat_screen.dart';
import 'package:e_commerce/screens/details/details_screen.dart';
import 'package:e_commerce/screens/favourites/favourites_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/login_success/log_in_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName : (context) => DetailsScreen(),
  CartScreen.routeName : (context) => CartScreen(),
  ProfileScreen.routeName : (context) => ProfileScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  FavouritesScreen.routeName: (context) => FavouritesScreen(),
};
