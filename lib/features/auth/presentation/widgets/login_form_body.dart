import 'package:flutter/material.dart';

import 'custom_password_text_form_field.dart';
import 'custom_text_form_field.dart';

class LoginFormBody extends StatefulWidget {
  const LoginFormBody({super.key});

  @override
  State<LoginFormBody> createState() => _LoginFormBodyState();
}

class _LoginFormBodyState extends State<LoginFormBody> {
  TextEditingController emailController = TextEditingController();

  static const double _sizeBoxHeight = 20;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: emailController,
          label: "Email",
          hintText: "Email",
          onChanged: (text) {},
        ),
        const SizedBox(
          height: _sizeBoxHeight,
        ),
        const CustomPasswordTextFormField(
          label: "Password",
        ),
        const SizedBox(
          height: _sizeBoxHeight,
        ),
      ],
    );
  }
}

