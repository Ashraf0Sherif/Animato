import 'package:animato/features/splash/presentation/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class AuthUsingSocialMedia extends StatelessWidget {
  const AuthUsingSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaButton(
            label: "Google",
            onPressed: () {},
            icon: AssetsData.kGoogle,
          ),
          const SizedBox(
            width: 20,
          ),
          SocialMediaButton(
            label: "Facebook",
            onPressed: () {},
            icon: AssetsData.kFacebook,
          ),
          const SizedBox(
            width: 20,
          ),
          SocialMediaButton(
            label: "Apple",
            onPressed: () {},
            icon: AssetsData.kApple,
          ),
        ],
      ),
    );
  }
}
