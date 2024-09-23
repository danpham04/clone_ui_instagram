import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/widgets/text_app.dart';

class StoryUser extends StatelessWidget {
  const StoryUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 32,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppPaths().hanam),
                        radius: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextApp(
                      text: 'text',
                      value: 0,
                      size: 13,
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
