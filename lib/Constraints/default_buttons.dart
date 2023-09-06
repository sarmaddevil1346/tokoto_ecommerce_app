import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton(this.width, this.text, this.press, {super.key});

  final double width;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: width,
        height: 56,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: press ,
          child: Text(text),
        ),
      ),
    );
  }
}