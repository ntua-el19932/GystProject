import 'package:flutter/material.dart';
import 'package:gyst/menu_page.dart';
import 'package:gyst/templates/study/add_to_study.dart';

class StudyPlannerPage extends StatefulWidget {
  const StudyPlannerPage({Key? key}) : super(key: key);

  @override
  State<StudyPlannerPage> createState() => _StudyPlannerPageState();
}

class _StudyPlannerPageState extends State<StudyPlannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Study Planner",
            style: TextStyle(
                color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const MenuPage()));
        },
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 6),children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Monday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Tuesday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Wednesday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Thursday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Friday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Saturday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToStudy()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFB7B7D4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text("Sunday", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
              ],),
            ),
          ),
        ],
        ),
      ),),
    );
  }
}