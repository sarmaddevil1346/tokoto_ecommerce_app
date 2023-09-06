import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Constraints/default_buttons.dart';
import '../Sign_in_screen/Components/emailfield.dart';
import '../Sign_in_screen/Components/social_card.dart';
import 'Components/confirmpassfield.dart';
import 'Components/passfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Welcome Back"),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                buildEmailFormField(),
                const SizedBox(
                  height: 30,
                ),
                buildPassFormField(),
                const SizedBox(
                  height: 30,
                ),
                buildConPasswordFormField(),
                const SizedBox(
                  height: 30,
                ),
                DefaultButton(double.infinity, "Sign Up", () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      voidCallback: () {},
                      iconData: Icons.facebook,
                    ),
                    SocialCard(
                      voidCallback: () {},
                      iconData: Icons.facebook,
                    ),
                    SocialCard(
                      voidCallback: () {},
                      iconData: Icons.facebook,
                    ),
                  ],
                ),
                const Text(
                  "By continuing your confirm password that you\n agree with our term and Conditions",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
