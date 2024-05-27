import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.icon});

  final String label;
  final VoidCallback? onPressed;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.lightBlue, Colors.lightBlueAccent, Colors.lightBlue],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          alignment: Alignment.center,
          child: Text(label),
        ),
      ),
    );
  }
}
