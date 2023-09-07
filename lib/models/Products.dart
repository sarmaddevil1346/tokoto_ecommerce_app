import 'package:flutter/material.dart';

class Product {
  String title, discription;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product(
      {required this.title,
      required this.discription,
      required this.images,
      required this.colors,
      this.rating = 0.0,
      required this.price,
      this.isFavourite = false,
      this.isPopular = false});
}

List<Product> demoProducts = [
  Product(
      title: "Wireless Controller for PS4",
      discription: "",
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DBE),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      price: 63.33),
  Product(
      title: "Nike Sport White Men Pent",
      discription: "",
      images: [
        "assets/images/Image Popular Product 2.png",
        "assets/images/Image Popular Product 1.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DBE),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      price: 87.55),
  Product(
      title: "Bicycle Helmet for cycling safety",
      discription: "",
      images: [
        "assets/images/Image Popular Product 3.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DBE),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      price: 73.11),
];
