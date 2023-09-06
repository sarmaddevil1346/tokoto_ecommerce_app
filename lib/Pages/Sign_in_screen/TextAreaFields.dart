import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/Pages/Sign_in_screen/Components/social_card.dart';
import '../../Constraints/default_buttons.dart';
import '../sign_up/Sign_Up.dart';
import 'Components/PassField.dart';
import 'Components/emailfield.dart';

class InputTextFormField extends StatefulWidget {
  const InputTextFormField({super.key});

  @override
  State<InputTextFormField> createState() => _InputTextFormFieldState();
}

final _form = GlobalKey<FormState>();
List<String> errors = [];
TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();
bool remember = false;

class _InputTextFormFieldState extends State<InputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            buildEmailFormField(),
            const SizedBox(
              height: 30,
            ),
            buildPasswordFormField(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Checkbox(
                    value: remember,
                    activeColor: Colors.deepOrangeAccent,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  const Text("Remember Me"),
                  const Spacer(),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(double.infinity, "Continue", () {
              if (_form.currentState!.validate()) {
                debugPrint("Success");
                emailEditingController.clear();
                passwordEditingController.clear();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              }
            }),
             const SizedBox(height: 60,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(voidCallback: (){} , iconData: Icons.facebook ,),
                SocialCard(voidCallback: (){}, iconData: Icons.facebook,),
                SocialCard(voidCallback: (){}, iconData: Icons.facebook,),
              ],
            ),
             const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(("Do not have an account? "),
                style: TextStyle(

                ),),
                GestureDetector(
                  onTap: () => const SignUpScreen(),
                  child: const Text("Sign Up" ,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepOrangeAccent
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
