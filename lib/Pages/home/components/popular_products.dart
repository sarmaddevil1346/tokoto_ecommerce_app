import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/home/components/product_card.dart';
import 'package:tokoto_ecommerce_app/Pages/home/components/section_title.dart';

import '../../../models/Products.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SectionTitle(text1: "Popular Products", text2: "See More"),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...List.generate(demoProducts.length,
                      (index) => ProductCard(product: demoProducts[index]))
            ],
          ),
        ),
      ],
    );
  }
}
