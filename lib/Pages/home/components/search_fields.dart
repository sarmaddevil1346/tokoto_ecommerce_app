import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: const InputDecoration(
          hintText: "Search Products",
          prefixIcon: Icon(Icons.search),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        ),
      ),
    );
  }
}
