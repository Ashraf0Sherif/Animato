import 'package:animato/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AuthUsingNumber extends StatelessWidget {
  const AuthUsingNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Login using "),
        InkWell(
          onTap: () {},
          child: Text(
            "Phone Number",
            style: Styles.kTextStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
