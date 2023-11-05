import 'package:assignment2/home_screen.dart';
import 'package:assignment2/profile.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIdx = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Search'),
    Text('Messages'),
    Profile(),
  ];

  void _onItemTap(int idx) {
    setState(() {
      _selectedIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Bottom Nav Bar')),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIdx),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: const Color(0xffe0e0e0)),
        ],
        currentIndex: _selectedIdx,
        onTap: _onItemTap,
      ),
    );
  }
}
