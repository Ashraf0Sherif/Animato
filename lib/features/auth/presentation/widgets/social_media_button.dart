import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.icon});

  final String label;
  final VoidCallback? onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.withOpacity(0.7),
        shadowColor: Colors.grey,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset(
          icon,
          height: 25,
        ),
      ),
    );
  }
}
