import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/completeprofile/textareafields.dart';
import '../../Constraints/default_buttons.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                  height: 10,
                ),
                const Text(
                  "Complete Profile",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 05,
                ),
                const Text(
                  "Complete your details or continue\nwith social media",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
              const CompleteProfileFields(),
                DefaultButton(double.infinity, "Sign Up", () {}),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "By continuing your confirm password that you\n agree with our term and Conditions",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


