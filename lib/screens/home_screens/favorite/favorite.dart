import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      initialIndex: 1,
      animationDuration: Duration(seconds: 1),
      child: Scaffold(
        body: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              text: "Following",
            ),
            Tab(
              text: "You",
            ),
          ],
        ),
      ),
    );
  }
}
