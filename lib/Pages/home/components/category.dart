import 'package:flutter/material.dart';

import '../data_models/item_categories_models.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categoriesitemlist.length,
                (index) {
              return CategoryCard(
                  text: categoriesitemlist.elementAt(index).text,
                  icon: categoriesitemlist.elementAt(index).icon,
                  press: () {});
            },
          )
        ],
      ),
    );
  }
}
