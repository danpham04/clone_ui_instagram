import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/widget_tab/feed_friend_user.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/widget_tab/feed_user.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/infor_user.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/widget_tab/reels_user.dart';

class Infor extends StatelessWidget {
  const Infor({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const InforUser(),
            ];
          },
          body: const TabBarView(
            children: [
              FeedUser(), // Nội dung cho Tab 1
              ReelsUser(), // Nội dung cho Tab 2
              FeedFriendUser(), // Nội dung cho Tab 3
            ],
          ),
        ),
      ),
    );
  }
}
