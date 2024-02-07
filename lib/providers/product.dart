// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Product with ChangeNotifier{
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double? rating;
  final double price;
  final bool? isPopular;
  bool isFavourite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating,
    required this.price,
    this.isPopular,
    this.isFavourite = false,
  });

  toggleFavoriteStatus(){
    isFavourite = !isFavourite;
    notifyListeners();
  }}

