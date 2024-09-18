import 'package:flutter/material.dart';

class TabInfor extends StatelessWidget {
  const TabInfor({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      automaticallyImplyLeading: false,
      floating: false,
      pinned: true,
      expandedHeight: 80,
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
    );
  }
}
