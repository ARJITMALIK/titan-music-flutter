import 'package:flutter/material.dart';
import 'package:meow/pages/ExplorePage.dart';
import 'package:meow/pages/HomePage.dart';
import 'package:meow/pages/LibraryPage.dart';

class CoreWrapper extends StatefulWidget {
  const CoreWrapper({super.key, required this.title});

  final String title;

  @override
  State<CoreWrapper> createState() => _CoreWrapperState();
}

class _CoreWrapperState extends State<CoreWrapper> {
  int selectedPageIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const LibraryPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.library_music),
            icon: Icon(Icons.library_music_outlined),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
