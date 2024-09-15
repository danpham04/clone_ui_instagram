import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:instagram_ui_ux/global/app_paths.dart';
import 'package:instagram_ui_ux/screens/home_screens/add/add_story.dart';
import 'package:instagram_ui_ux/screens/home_screens/favorite/favorite.dart';
import 'package:instagram_ui_ux/screens/home_screens/home/home.dart';
import 'package:instagram_ui_ux/screens/home_screens/infor/infor.dart';
import 'package:instagram_ui_ux/screens/home_screens/search/search.dart';
import 'package:instagram_ui_ux/store/home_store.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final HomeStore stores = HomeStore();
  late final List<Widget> _widgets;
  @override
  void initState() {
    _widgets = [
      const Home(),
      const Search(),
      const AddStory(),
      const Favorite(),
      const Infor(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => SafeArea(child: _widgets[stores.currentIndex]),
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  activeIcon: Icon(Icons.search_outlined),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppPaths().add,
                    width: 30,
                  ),
                  // activeIcon: const Icon(Icons.search_outlined),
                  label: 'Add'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  activeIcon: Icon(Icons.favorite),
                  label: 'Favorite'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: 'Profile'),
            ],
            iconSize: 30,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            // type: BottomNavigationBarType.shifting,
            showSelectedLabels:
                false, // hiển thị label của tab khi đang ở tab đó - false khi đang đứng ở tab nào thì label của nó biết mất
            showUnselectedLabels:
                false, // hiển thị label của tab khác - false ko show label của tab còn lại
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            onTap: (value) {
              stores.setIndex(value);
            },
            currentIndex: stores.currentIndex,
          );
        },
      ),
    );
  }
}
