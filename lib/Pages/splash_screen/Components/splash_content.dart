import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.width,
    required this.text,
    required this.image,
    required this.text2,
  });
  final String text, text2, image;

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          text,

          style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
        Text(text2,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(height: 265, width: 234, image),
        const Spacer(),
      ],
    );
  }
}
