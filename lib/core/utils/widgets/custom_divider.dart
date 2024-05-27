import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text("or continue with"),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
