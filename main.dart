import 'package:flutter/material.dart';
import 'package:gyst/add_page.dart';
import 'package:gyst/focus_page.dart';
import 'package:gyst/home_page.dart';
import 'package:gyst/menu_page.dart';
import 'package:gyst/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gyst',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFD3D3E2)),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    MenuPage(),
    AddPage(),
    FocusPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],   
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF5B5F97),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              label: 'Menu', 
              icon: Icon(Icons.format_list_bulleted_rounded)),
          BottomNavigationBarItem(
            label: 'Add',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
              label: 'Focus', 
              icon: Icon(Icons.brightness_2_outlined)),
          BottomNavigationBarItem(
              label: 'Profile', 
              icon: Icon(Icons.person_outlined))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          },);
        }
      ),
    );
  }
}
