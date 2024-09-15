import 'package:flutter/material.dart';
import 'package:instagram_ui_ux/screens/home_screens/search/data_path.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 48,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Tìm kiếm",
              prefixIcon: Icon(Icons.search),
              prefixStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: DataPath().dataPath.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final data = DataPath().dataPath[index];
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(
                data['img'],
                width: 50,
                height: 50,
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }
}
