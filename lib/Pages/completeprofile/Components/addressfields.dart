

import 'package:flutter/material.dart';

import '../../../Constraints/custom_suffix_icon.dart';

TextFormField buildAddressFormField() {
  return TextFormField(
    //controller: passwordEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your Address";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
      hintText: "Enter Your Address",
      labelText: "Address",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSuffixIcon(
        iconData: Icons.lock_outline,
      ),
    ),
  );
}