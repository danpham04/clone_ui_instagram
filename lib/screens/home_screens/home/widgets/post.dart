import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/home/widgets/icon_home.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    AppPaths().hanam,
                  ),
                ),
                title: const Text("Pham Trong Dan"),
                subtitle: const Text("Âm thanh "),
              ),
              SizedBox(
                child: Image.asset(
                  AppPaths().hanam,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconHome(
                          event: () {},
                          size: 30,
                          icon: const Icon(Icons.favorite_border_outlined),
                        ),
                        IconHome(
                          event: () {},
                          icon: Image.asset(
                            AppPaths().comment,
                            height: 25,
                          ),
                        ),
                        IconHome(
                          event: () {},
                          icon: Image.asset(
                            AppPaths().share,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconHome(
                      size: 30,
                      event: () {},
                      icon: const Icon(Icons.bookmark_border))
                ],
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
