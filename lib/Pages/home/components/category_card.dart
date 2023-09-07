import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text, icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
