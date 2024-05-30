import 'package:flutter/material.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 18),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.5)),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
          ),
        ),
      ),
    );
  }
}
