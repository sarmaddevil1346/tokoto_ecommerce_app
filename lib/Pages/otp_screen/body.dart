import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Constraints/default_buttons.dart';
import 'package:tokoto_ecommerce_app/Pages/otp_screen/Components/timerbuild.dart';
import 'otpform.dart';

final otpDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.red));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("OTP Verification"),
                const Text("We send you code  to +923490000000"),
                buildTimer(),
                const SizedBox(
                  height: 20,
                ),
                const OtpForm(),
                const SizedBox(
                  height: 90,
                ),
                DefaultButton(double.infinity, "Reset OTP", () {}),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
