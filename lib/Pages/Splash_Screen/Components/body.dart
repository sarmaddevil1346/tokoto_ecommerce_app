import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/Splash_Screen/Components/splash_content.dart';
import 'package:tokoto_ecommerce_app/Pages/Splash_Screen/Components/three_dots.dart';

import '../../../Constraints/default_buttons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

int dotindex = 0;

class _SplashScreenState extends State<SplashScreen> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    dotindex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  width: width,
                  text: "TOKOTO",
                  image: splashData[index]["image"].toString(),
                  text2: splashData[index]["text"].toString(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => builddot(index),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  DefaultButton(width, "Continue", () {}),
                  const Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
