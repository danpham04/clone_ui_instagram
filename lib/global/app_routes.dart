import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/screens/home_screens/home_screens.dart';
import 'package:instagram_ui_ux/screens/login/login.dart';
import 'package:instagram_ui_ux/screens/sign_up/sign_up.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) => makeRouter(
            context: context,
            routerName: settings.name!,
            argument: settings.arguments));
  }

  static makeRouter({
    required BuildContext context,
    required String routerName,
    Object? argument,
  }) {
    switch (routerName) {
      case login:
        return const Login();
      case homeScreens:
        return const HomeScreens();
      case signUp:
      return const SignUp();
      default:
        throw 'Router $routerName is not define';
    }
  }

  static const String homeScreens = '/home_screens';
  static const String login = '/';
  static const String signUp = 'sign_up';
}
