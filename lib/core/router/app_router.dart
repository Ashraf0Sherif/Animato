import 'package:animato/features/auth/presentation/login_view.dart';
import 'package:animato/features/auth/presentation/register_view.dart';
import 'package:animato/features/home/presentation/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kLoginView = "/LoginView";
  static const kRegisterView = "/registerView";
  static final Map<String, Widget> _views = {
    kHomeView: const HomeView(),
    kLoginView: const LoginView(),
    kRegisterView: const RegisterView(),
  };

  static void pushNavigation(
      {required String view, Transition? transition, int? milliseconds}) {
    Get.to(
      _views[view],
      transition: transition ?? Transition.fade,
      duration: Duration(milliseconds: milliseconds ?? 1500),
    );
  }
  static void pushReplacementNavigation(
      {required String view, Transition? transition, int? milliseconds}) {
    Get.off(
      _views[view],
      transition: transition ?? Transition.fade,
      duration: Duration(milliseconds: milliseconds ?? 1500),
    );
  }
}
