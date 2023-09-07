import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      //height: 76,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20)),
      child: const Text.rich(
        TextSpan(
          text: "A Summer surprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Cashback 20% ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

          ],
        ),
      ),

    );
  }
}
