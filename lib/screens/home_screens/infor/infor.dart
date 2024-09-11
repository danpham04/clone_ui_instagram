import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  const Infor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Pham Dan"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.list_sharp))
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        
      ),
    );
  }
}
