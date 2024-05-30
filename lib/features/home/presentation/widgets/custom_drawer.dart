import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: kSecondaryColor,
          ),
        ),
      ),
    );
  }
}
