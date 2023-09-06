
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({super.key,
    required this.voidCallback,
    required this.imageurl,
  });
  final VoidCallback voidCallback ;
  final String imageurl;
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
        child: SvgPicture.asset(imageurl),
      ),
    );
  }
}
