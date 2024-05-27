import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
class AuthUsingSocialMedia extends StatelessWidget {
  const AuthUsingSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 270,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                AssetsData.kGoogle,
                width: 40,
              ),
            ),
            Image.asset(
              AssetsData.kFacebook,
              width: 40,
            ),
            Image.asset(
              AssetsData.kApple,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}