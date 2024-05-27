import 'package:animato/core/utils/assets.dart';
import 'package:animato/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:animato/features/splash/presentation/widgets/auth_using_number.dart';
import 'package:flutter/material.dart';

import 'auth_using_social_media.dart';
import 'custom_button.dart';
import 'custom_divider.dart';
import 'my_behavior.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  String? email, password;

  final GlobalKey<FormState> _formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsData.kBackground), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.black38.withOpacity(0.123),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: _formKey,
            autovalidateMode: autovalidateMode,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Image.asset(
                            AssetsData.kLogo,
                            width: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Welcome to Animato 👋".toUpperCase(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Login to continue using Animato ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "Enter your email",
                          onChanged: (text) {
                            email = text;
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "Enter your password",
                          onChanged: (text) {
                            password = text;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: SizedBox(
                            width: 150,
                            child: CustomButton(
                              label: "Login",
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                } else {
                                  autovalidateMode = AutovalidateMode.always;
                                  setState(() {});
                                }
                              },
                              //color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(child: Text("Continue with")),
                        const SizedBox(
                          height: 20,
                        ),
                        const AuthUsingSocialMedia(),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomDivider(),
                        const SizedBox(
                          height: 10,
                        ),
                        const AuthUsingNumber(),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
