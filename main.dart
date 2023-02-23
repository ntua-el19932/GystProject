import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gyst',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFD3D3E2)),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text('Gyst'),
      //),
      body: const Center(
        child: Text('Welcome!'),
      ),  
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
          });
        },
      ),
    );
  }
}