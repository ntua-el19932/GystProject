import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gyst',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gyst'),
        ),
        body: const Center(
          child: Text('Welcome')
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple[700], 
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
               label: 'Home',
               icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
               label: 'Menu',
               icon: Icon(Icons.format_list_bulleted_rounded)
              ),
              BottomNavigationBarItem(
               label: 'Add',
               icon: Icon(Icons.add),
              ),
              BottomNavigationBarItem(
               label: 'Focus',
               icon: Icon(Icons.brightness_2_outlined)
              ),
              BottomNavigationBarItem(
               label: 'Profile',
               icon: Icon(Icons.person_outlined)
              )
          ],
        ),
      ),
    );
  }
}
