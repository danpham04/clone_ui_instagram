import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/global/app_routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 3),
        // () => Navigator.pushNamed(context, AppRoutes.login),
        () {
          if (mounted) {
            Navigator.of(context).pushNamed(AppRoutes.login);
          }
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 80,
              child: Image.asset(
                AppPaths().logoIG,
              ),
            ),
            const SizedBox(
              width: 80,
              height: 80,
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "M",
                      style: TextStyle(
                          color: Color.fromARGB(255, 230, 74, 62),
                          fontSize: 25),
                      children: [
                        TextSpan(
                          text: "e",
                          style: TextStyle(
                              color: Color.fromARGB(255, 205, 7, 255),
                              fontSize: 25),
                        ),
                        TextSpan(
                          text: "t",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 7, 222),
                              fontSize: 25),
                        ),
                        TextSpan(
                          text: "a",
                          style: TextStyle(color: Colors.pink, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
