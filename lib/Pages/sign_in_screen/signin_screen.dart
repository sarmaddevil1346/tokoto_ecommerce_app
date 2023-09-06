import 'package:flutter/material.dart';

import 'TextAreaFields.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign in with your E-Mail and Password\n continue with social media",
                  textAlign: TextAlign.center,
                ),
                InputTextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
