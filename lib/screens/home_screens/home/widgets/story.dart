import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          15.horizontalSpace,
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppPaths().hanam),
                  radius: 42,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('Create')
            ],
          ),
          Row(
            children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppPaths().hanam),
                        radius: 42,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Name User')
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
