
import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({super.key,
    required this.voidCallback,
    required this.iconData,
  });
  final voidCallback;
  final iconData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(12),
        decoration:
        const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(iconData),
      ),
    );
  }
}
