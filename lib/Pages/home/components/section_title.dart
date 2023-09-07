import 'package:flutter/material.dart';
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.text1, required this.text2,
  });
final String text1,text2;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
        text2,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}