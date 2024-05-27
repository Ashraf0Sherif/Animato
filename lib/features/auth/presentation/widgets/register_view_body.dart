import 'package:animato/core/utils/app_router.dart';
import 'package:animato/core/utils/assets.dart';
import 'package:animato/core/utils/styles.dart';
import 'package:animato/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../core/utils/widgets/custom_button.dart';
import '../../../../core/utils/widgets/custom_divider.dart';
import '../../../../core/utils/widgets/my_behavior.dart';
import 'auth_using_social_media.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  String? username, email, password, confirmPassword;

  final GlobalKey<FormState> _formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsData.kRegisterBackground),
            fit: BoxFit.cover),
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
                          "Username",
                          style: Styles.kTextStyle14,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "Enter your username",
                          onChanged: (text) {
                            username = text;
                          },
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
                        const Text(
                          "Confirm Password",
                          style: Styles.kTextStyle14,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "Confirm your password",
                          onChanged: (text) {
                            password = text;
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: CustomButton(
                            label: "Signup",
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
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Have an account ? "),
                            InkWell(
                              onTap: () {
                                AppRouter.pushReplacementNavigation(
                                    view: AppRouter.kLoginView,
                                    transition: Transition.leftToRight,
                                    milliseconds: 350);
                              },
                              child: Text(
                                "Login",
                                style: Styles.kTextStyle14
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomDivider(),
                        const SizedBox(
                          height: 10,
                        ),
                        const AuthUsingSocialMedia(),
                        const SizedBox(
                          height: 20,
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
