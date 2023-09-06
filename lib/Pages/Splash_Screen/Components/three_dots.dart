import 'package:flutter/material.dart';

import 'body.dart';

AnimatedContainer builddot(int index) {
  return AnimatedContainer(
    padding: const EdgeInsets.all(3),
    height: 6,
    width: dotindex == index ? 20 : 6,
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(3)),
    duration: const Duration(milliseconds: 02),
  );
}