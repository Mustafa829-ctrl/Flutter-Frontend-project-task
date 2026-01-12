import 'package:flutter/material.dart';
import 'package:fronted_project/bottom-bar-profile.dart';
import 'package:fronted_project/list_tile.dart';
import 'package:fronted_project/bottom-bar-settings.dart';
import 'package:fronted_project/textfield.dart';
import 'package:fronted_project/list_tile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBar> {
  int selectedIndex = 0;
  List<Widget> screenList = [MyList(), Setting(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    );
  }
}