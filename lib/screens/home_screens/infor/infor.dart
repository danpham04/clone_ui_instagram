import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/infor_user.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/tab_infor.dart';

class Infor extends StatelessWidget {
  const Infor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hana aa"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppPaths().menu,
                width: 25,
              ))
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
        ),
        child: CustomScrollView(
          slivers: [
            const InforUser(),
            const TabInfor(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    color: Colors.deepPurple,
                    height: 400,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    color: Colors.deepPurple,
                    height: 400,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    color: Colors.deepPurple,
                    height: 400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
