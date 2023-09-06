import 'package:flutter/material.dart';

import '../../../Constraints/custom_suffix_icon.dart';

TextFormField buildFirstNameFormField() {
  return TextFormField(
    //  controller: emailEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your first name";
      }
    },
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      hintText: "Enter the First Name",
      labelText: "First Name",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSuffixIcon(
        iconData: Icons.email_outlined,
      ),
    ),
  );
}