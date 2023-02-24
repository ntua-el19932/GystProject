import 'package:flutter/material.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/month.dart';
import 'package:gyst/templates/shopping.dart';
import 'package:gyst/templates/workout.dart';
import 'package:gyst/templates/todo.dart';
import 'package:gyst/templates/watch.dart';
import 'package:gyst/templates/notes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MENU",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0)),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10, crossAxisSpacing: 10),children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StudyPlannerPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Study Planner", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MonthlyPlannerPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Month Planner", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoppingListPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Shopping List", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkoutPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Workout", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ToDoListPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("To Do List", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const WatchListPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Watch List", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const QuickNotesPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Quick notes", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
        ],
        ),
      ))
    );
  }
}