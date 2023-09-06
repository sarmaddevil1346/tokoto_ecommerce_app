

import 'package:flutter/material.dart';

import '../../../Constraints/custom_suffix_icon.dart';

TextFormField buildPhoneNumberFormField() {
  return TextFormField(
    //controller: passwordEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your Phone Number";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
      hintText: "Enter Your Phone Number",
      labelText: "Phone Number",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSuffixIcon(
        iconData: Icons.lock_outline,
      ),
    ),
  );
}