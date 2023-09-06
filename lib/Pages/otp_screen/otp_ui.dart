import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/otp_screen/body.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "OTP Verification"
        ),
      ),
      body:  Body(),
    );
  }
}
