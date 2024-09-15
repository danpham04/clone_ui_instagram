import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';

class InforUser extends StatelessWidget {
  const InforUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 0,
      elevation: 0,
      pinned: true,
      centerTitle: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 236, 204, 215),
              Color.fromARGB(255, 137, 193, 238)
            ]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(AppPaths().hanam),
                    ),
                    const SizedBox(
                      width: 100,
                      child: ListTile(
                        
                        title: Text('11'),
                        subtitle: Text('BÀi viết'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
