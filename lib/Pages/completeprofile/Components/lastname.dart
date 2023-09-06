import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Constraints/custom_suffix_icon.dart';

TextFormField buildLastNameFormField() {
  return TextFormField(
    //controller: passwordEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your Last Name";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
      hintText: "Enter the Last Name",
      labelText: "Last Name",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSuffixIcon(
        iconData: Icons.lock_outline,
      ),
    ),
  );
}