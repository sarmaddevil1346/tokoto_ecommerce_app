import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/home/components/search_fields.dart';

import 'icn_wth_btn_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchFieldWidget(),
          IconWidget(itemCount: 0, svgUrl: 'assets/icons/Cart Icon.svg', press: () {  },),
          IconWidget(itemCount: 2, svgUrl: 'assets/icons/Bell.svg', press: () {  },),
        ],
      ),
    );
  }
}
