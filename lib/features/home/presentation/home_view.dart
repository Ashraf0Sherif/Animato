import 'package:animato/core/constants.dart';
import 'package:animato/features/home/presentation/widgets/custom_drawer.dart';
import 'package:animato/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications)),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: const HomeViewBody(),
    );
  }
}

