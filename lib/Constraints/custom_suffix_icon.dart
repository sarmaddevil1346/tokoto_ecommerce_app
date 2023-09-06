import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key, required this.iconData,
  });
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0,20,20,20),
      child: Icon(iconData,
      color: Colors.grey,
      ),
    );
  }
}
