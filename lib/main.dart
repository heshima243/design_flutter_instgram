import 'package:flutter/material.dart';
import 'package:rules_app/post_widget.dart';
import 'package:rules_app/story_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          title: Center(
            child: Image.asset(
              'images/heshima.png',
              height: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: 'Camera'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Person"),
          ],
        ),
      ),
    );
  }
}
