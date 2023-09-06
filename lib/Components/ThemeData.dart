import 'package:flutter/material.dart';

IconThemeData buildIconThemeData() => const IconThemeData(
    color: Color.fromRGBO(40, 40, 40, 1),

);

AppBarTheme buildAppBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 1,
  );
}

InputDecorationTheme buildInputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      color: Colors.black,
    ),
    gapPadding: 5,
  );
  return InputDecorationTheme(
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: const TextStyle(color: Colors.black),
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
