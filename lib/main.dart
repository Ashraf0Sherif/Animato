import 'package:animato/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Animato());
}

class Animato extends StatelessWidget {
  const Animato({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
