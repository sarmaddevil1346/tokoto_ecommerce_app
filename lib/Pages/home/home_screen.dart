import 'package:flutter/material.dart';
import 'components/category.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/special_card_offer.dart';
import 'components/special_offfer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          HomeHeader1(),
          SizedBox(
            height: 20,
          ),
          DiscountBanner(),
          SizedBox(
            height: 10,
          ),
          Categories(),
          SpecialOffers()
        ],
      ),
    );
  }
}
