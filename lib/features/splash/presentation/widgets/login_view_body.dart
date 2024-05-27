import 'package:animato/core/utils/assets.dart';
import 'package:animato/core/utils/styles.dart';
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
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
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
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              AssetsData.kLogo,
                              height: 90,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            "Welcome to Animato 👋".toUpperCase(),
                            style: Styles.kTextStyle14
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Login",
                          style: Styles.kTextStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Login to continue using Animato ",
                          style:
                              Styles.kTextStyle14.copyWith(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Email",
                          style: Styles.kTextStyle14,
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
                          style: Styles.kTextStyle14,
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
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2, bottom: 2),
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password ?",
                              style: Styles.kTextStyle14.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
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
