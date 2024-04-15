import 'package:flutter/material.dart';

class NewNavigationTabBar extends StatefulWidget {
  const NewNavigationTabBar({super.key});

  @override
  State<NewNavigationTabBar> createState() => _NewNavigationTabBarState();
}

class _NewNavigationTabBarState extends State<NewNavigationTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
