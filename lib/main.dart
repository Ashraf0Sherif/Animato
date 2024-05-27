import 'package:animato/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Animato());
}

class Animato extends StatelessWidget {
  const Animato({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        home: SplashView(),
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
