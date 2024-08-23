import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/screens/home_screens/home/widgets/icon_home.dart';
import 'package:instagram_ui_ux/widgets/text_app.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconHome(
          icon: Icons.arrow_back_ios,
          event: () {
            Navigator.of(context).pop();
          },
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 450,
              child: Column(
                children: [TextFormField(), TextFormField()],
              ),
            ),
            const SizedBox(
              height: 30,
              child: TextApp(value: 0, text: 'Instagram or Facebook'),
            )
          ],
        ),
      ),
    );
  }
}
