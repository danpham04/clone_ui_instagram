import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/home/widgets/icon_home.dart';
import 'package:instagram_ui_ux/screens/home_screens/home/widgets/story.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconHome(
          icon: Icons.camera_alt_outlined,
          event: () {},
          size: 30,
        ),
        centerTitle: true,
        title: Image.asset(
          AppPaths().instagram,
          cacheHeight: 35,
        ),
        actions: [
          IconHome(
            event: () {},
            size: 30,
            icon: Icons.favorite_border_outlined,
          ),
          IconHome(
            event: () {},
            size: 30,
            icon: Icons.message_outlined,
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Story()
          ],
        ),
      ),
    );
  }
}
