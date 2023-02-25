import 'package:flutter/material.dart';
import 'add_page.dart';
import 'focus_page.dart';
import 'home_page.dart';
import 'menu_page.dart';
import 'profile/profile_page.dart';
import 'profile/update_profile.dart';
import 'styles/colors.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/month.dart';
import 'package:gyst/templates/shopping.dart';
import 'package:gyst/templates/workout.dart';
import 'package:gyst/templates/todo.dart';
import 'package:gyst/templates/watch.dart';
import 'package:gyst/templates/notes.dart';

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
      theme: ThemeData(scaffoldBackgroundColor: light, primaryColorDark: dark),
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
    ProfilePage(),
    UpdateProfile(),
    MonthlyPlannerPage(),
    QuickNotesPage(),
    ShoppingListPage(),
    StudyPlannerPage(),
    ToDoListPage(),
    WatchListPage(),
    WorkoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: dark,
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
                label: 'Menu', icon: Icon(Icons.format_list_bulleted_rounded)),
            BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
                label: 'Focus', icon: Icon(Icons.brightness_2_outlined)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(Icons.person_outlined))
          ],
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;
              },
            );
          }),
    );
  }
}
