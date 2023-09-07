import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,   this.itemCount = 0, required this.svgUrl, required this.press,
  });
  final int itemCount ;
  final String svgUrl;
  final GestureTapCallback press;




  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(svgUrl),
          ),
        ),
        if(itemCount!=0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: 16,
              width: 16,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child:  Text(
                "$itemCount",
                style: const TextStyle(
                    fontSize: 12, height: 1.2, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
      ],
    );
  }
}
