import 'package:flutter/material.dart';
import 'components/category.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';

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
          HomeHeader(),
          SizedBox(
            height: 20,
          ),
          DiscountBanner(),
          SizedBox(height: 10,),
          Categories(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Special for you",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text("See More",style: TextStyle(
                    fontSize: 12
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
