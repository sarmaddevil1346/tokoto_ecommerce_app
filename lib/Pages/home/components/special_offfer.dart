import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/home/components/section_title.dart';
import 'package:tokoto_ecommerce_app/Pages/home/components/special_card_offer.dart';

import 'home_header.dart';
class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SectionTitle(text1: 'Special for you', text2: 'See More',),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Smart Phones',
                image: 'assets/images/Image Banner 2.png',
                noofBrands: 2,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'Shoes',
                image: 'assets/images/Image Banner 3.png',
                noofBrands: 12,
                press: () {},
              ),
              const SizedBox(width: 20,)
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
