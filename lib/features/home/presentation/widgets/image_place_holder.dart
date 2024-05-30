import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: MediaQuery.of(context).size.width * 0.33,
            bottom: 30,
            child: const Text(
              "Attack On Titan",
              style: Styles.kTextStyle16,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.shade800),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
