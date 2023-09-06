import 'package:flutter/material.dart';
import 'Components/addressfields.dart';
import 'Components/firstnamefiels.dart';
import 'Components/lastname.dart';
import 'Components/phonenumber.dart';
class CompleteProfileFields extends StatelessWidget {
  const CompleteProfileFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFirstNameFormField(),
        const SizedBox(
          height: 30,
        ),
        buildLastNameFormField(),
        const SizedBox(
          height: 30,
        ),
        buildPhoneNumberFormField(),
        const SizedBox(
          height: 30,
        ),
        buildAddressFormField(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}