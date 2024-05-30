import 'package:flutter/material.dart';

import 'custom_password_text_form_field.dart';
import 'custom_text_form_field.dart';

class RegisterFormBody extends StatefulWidget {
  const RegisterFormBody({super.key});

  @override
  State<RegisterFormBody> createState() => _RegisterFormBodyState();
}

class _RegisterFormBodyState extends State<RegisterFormBody> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  static const double _sizeBoxHeight = 20;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: usernameController,
          label: "Username",
          hintText: "Eren Yeager",
          onChanged: (text) {},
        ),
        const SizedBox(
          height: _sizeBoxHeight,
        ),
        CustomTextFormField(
          label: "Email",
          hintText: "Email",
          controller: emailController,
          onChanged: (text) {},
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomPasswordTextFormField(
          label: "Password",
        ),
        const SizedBox(
          height: _sizeBoxHeight,
        ),
        const CustomPasswordTextFormField(
          label: "Confirm Password",
        ),
        const SizedBox(
          height: _sizeBoxHeight,
        ),
      ],
    );
  }
}
