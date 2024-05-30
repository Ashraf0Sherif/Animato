import 'dart:async';

import 'package:flutter/material.dart';

import 'image_place_holder.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final List<String> imagePaths = [
    "assets/images/background2.jpg",
    "assets/images/background3.jpg",
    "assets/images/backgroundtest.jpg"
  ];
  int activePage = 0;
  PageController pageController = PageController();
  Timer? _timer;

  void automaticSliding() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (pageController.page == imagePaths.length - 1) {
        pageController.animateTo(0,
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut);
      } else {
        pageController.nextPage(
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    automaticSliding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    activePage = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ImagePlaceHolder(
                    image: imagePaths[index],
                  );
                },
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 4,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 2.7,
                          backgroundColor: index == activePage
                              ? Colors.blue.shade900
                              : Colors.white,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
