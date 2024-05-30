import 'package:animato/core/router/app_router.dart';
import 'package:animato/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void homeNavigation() {
    Future.delayed(
      const Duration(seconds: 1),
      () => AppRouter.pushReplacementNavigation(
          view: AppRouter.kLoginView,
          milliseconds: 1200,
          transition: Transition.fadeIn),
    );
  }

  @override
  void initState() {
    homeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              AssetsData.kLogo,
              width: 120,
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
