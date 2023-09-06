import 'package:flutter/material.dart';

import 'body.dart';
class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? focusNode2;
  FocusNode? focusNode3;
  FocusNode? focusNode4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    focusNode2!.dispose();
    focusNode2!.dispose();
    focusNode2!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 56,
            child: TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 23,
              ),
              decoration: otpDecoration,
              onChanged: (value) {
                nextField(focusNode: focusNode2, value: value);
              },
            ),
          ),
          SizedBox(
            width: 56,
            child: TextFormField(
              focusNode: focusNode2,
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 23,
              ),
              decoration: otpDecoration,
              onChanged: (value) {
                nextField(focusNode: focusNode3, value: value);
              },
            ),
          ),
          SizedBox(
            width: 56,
            child: TextFormField(
              focusNode: focusNode3,
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 23,
              ),
              decoration: otpDecoration,
              onChanged: (value) {
                nextField(focusNode: focusNode4, value: value);
              },
            ),
          ),
          SizedBox(
            width: 56,
            child: TextFormField(
              focusNode: focusNode4,
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 23,
              ),
              decoration: otpDecoration,
              onChanged: (value) {
                focusNode4!.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
