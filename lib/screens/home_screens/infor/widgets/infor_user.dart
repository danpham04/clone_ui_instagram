import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
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
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 236, 204, 215),
              Color.fromARGB(255, 137, 193, 238)
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
