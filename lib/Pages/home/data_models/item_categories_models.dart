import 'package:flutter/material.dart';

class CategoryItem {
  final String text, icon;
  final GestureTapCallback press;

  CategoryItem({required this.text, required this.icon, required this.press});
}

List<CategoryItem> categoriesitemlist = [
  CategoryItem(
    text: "Flash Deal",
    icon: "assets/icons/Flash Icon.svg",
    press: () {},
  ),
  CategoryItem(
    text: "Bill",
    icon: "assets/icons/Bill Icon.svg",
    press: () {},
  ),
  CategoryItem(
    text: "Game",
    icon: "assets/icons/Game Icon.svg",
    press: () {},
  ),
  CategoryItem(
    text: "Daily Gift",
    icon: "assets/icons/Gift Icon.svg",
    press: () {},
  ),
  CategoryItem(
    text: "More",
    icon: "assets/icons/Discover.svg",
    press: () {},
  ),
];
