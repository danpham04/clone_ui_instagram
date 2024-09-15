import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/infor_user.dart';

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
            InforUser(),
            const SliverAppBar(
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: DefaultTabController(
                  length: 3,
                  animationDuration: Duration(seconds: 1),
                  child: TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                    Tab(
                      icon: Icon(Icons.menu),
                    ),
                    Tab(
                      icon: Icon(Icons.menu),
                    ),
                    Tab(
                      icon: Icon(Icons.menu),
                    ),
                  ]),
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
