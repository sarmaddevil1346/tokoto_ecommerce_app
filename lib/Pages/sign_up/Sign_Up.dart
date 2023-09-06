import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/sign_up/Components/emailfield.dart';

import '../../Constraints/default_buttons.dart';
import '../../Constraints/social_card.dart';
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
                const SizedBox(
                  height: 30 ,
                ),
                const Text("Welcome Back",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:  FontWeight.bold
                ),),
                const SizedBox(
                  height:05 ,
                ),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                 const SizedBox(
                  height: 40 ,
                ),
                buildEmailFormField(),
                const SizedBox(
                  height: 30,
                ),
                buildPasswordFormField(),
                const SizedBox(
                  height: 30,
                ),
                buildConPassFormField(),
                const SizedBox(
                  height: 30,
                ),
                DefaultButton(double.infinity, "Sign Up", () {}),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      voidCallback: () {

                      },
                      imageurl: "assets/icons/google-icon.svg",
                    ),
                    SocialCard(
                      voidCallback: () {},
                      imageurl: 'assets/icons/facebook-2.svg',
                    ),
                    SocialCard(
                      voidCallback: () {},
                      imageurl: 'assets/icons/twitter.svg',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20 ,
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
