import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZoomTransitionPage extends CustomTransitionPage<void> {
  final Widget child;

  ZoomTransitionPage({required this.child})
      : super(
          transitionDuration: const Duration(milliseconds: 100),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
              child: child,
            );
          },
          child: child,
        );
}
