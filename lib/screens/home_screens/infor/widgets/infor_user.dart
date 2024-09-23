import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/widgets/story_user.dart';
import 'package:instagram_ui_ux/widgets/text_app.dart';

class InforUser extends StatelessWidget {
  const InforUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 0,
      elevation: 0,
      pinned: true,
      centerTitle: true,
      expandedHeight: 350,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 236, 204, 215),
              Color.fromARGB(255, 137, 193, 238)
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(AppPaths().hanam),
                      ),
                      const Column(
                        children: [
                          TextApp(
                            value: 2,
                            text: "11",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                          TextApp(
                            value: 2,
                            text: "Bài viết",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          TextApp(
                            value: 2,
                            text: "92",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                          TextApp(
                            value: 2,
                            text: "người theo dõi",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          TextApp(
                            value: 2,
                            text: "110",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                          TextApp(
                            value: 2,
                            text: "đang theo dõi",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const TextApp(
                  value: 8,
                  text: "Hana aa",
                  font: FontWeight.bold,
                  size: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: const TextApp(
                        text: "Chỉnh sửa",
                        value: 0,
                        size: 13,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: const TextApp(
                        text: "Chia sẻ trang cá nhân",
                        value: 0,
                        size: 13,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Image.asset(AppPaths().addIg),
                    ),
                  ],
                ),
                const StoryUser(),
              ],
            ),
          ),
        ),
      ),
      bottom: TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
        Tab(
          icon: Image.asset(
            AppPaths().feed,
            width: 25,
            color: Colors.black,
          ),
        ),
        Tab(
          icon: Image.asset(
            AppPaths().reels,
            width: 25,
          ),
        ),
        Tab(
          icon: Image.asset(
            AppPaths().friendFeed,
            width: 25,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
