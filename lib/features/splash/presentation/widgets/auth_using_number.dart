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
          child: const Text(
            "Phone Number",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
