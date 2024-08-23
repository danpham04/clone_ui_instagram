import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/global/app_routes.dart';
import 'package:instagram_ui_ux/widgets/text_app.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 450,
              child: Column(
                children: [
                  Image.asset(
                    AppPaths().instagram,
                    width: 200,
                    height: 100,
                  ),
                  ClipOval(
                    child: Image.asset(
                      AppPaths().hanam,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const TextApp(
                    value: 10.0,
                    text: 'Ha_Nam',
                    size: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[500],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.homeScreens);
                      },
                      child: const TextApp(
                        value: 0,
                        text: 'Log in',
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextApp(
                    value: 30,
                    text: 'Switch accounts',
                    color: Colors.blue[400],
                    size: 17,
                    font: FontWeight.bold,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamed(AppRoutes.signUp);
                        },
                      text: 'Sign up.',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
