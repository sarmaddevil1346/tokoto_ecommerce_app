import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.aspectRatio = 1.02,
    this.width = 140,
    required this.product,
  });
  final double aspectRatio, width;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(product.images[0]),
                  ),
                ),
                Text(
                  product.title,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " \$${product.price}",
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: Container(
                        height: 28,
                        width: 28,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child:
                            SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
