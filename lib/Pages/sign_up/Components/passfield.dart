import 'package:flutter/material.dart';

import '../../../Constraints/custom_suffix_icon.dart';

TextFormField buildConPasswordFormField() {
  return TextFormField(
    //controller: passwordEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your Confirm Password";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
      hintText: "Enter Confirm Password",
      labelText: "Confirm Password",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSuffixIcon(
        iconData: Icons.lock_outline,
      ),
    ),
  );
}