import 'package:animato/core/router/app_router.dart';
import 'package:animato/core/utils/assets.dart';
import 'package:animato/core/utils/styles.dart';
import 'package:animato/features/auth/presentation/widgets/register_form_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../core/utils/widgets/custom_back_arrow.dart';
import '../../../../core/utils/widgets/custom_button.dart';
import '../../../../core/utils/widgets/my_behavior.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
                    Stack(
                      children: [
                        const CustomBackArrow(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
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
                              "Register",
                              style: Styles.kTextStyle20
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Register to continue using Animato ",
                              style: Styles.kTextStyle14
                                  .copyWith(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const RegisterFormBody(),
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
                              height: 20,
                            ),
                          ],
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
