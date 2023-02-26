import 'package:flutter/material.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/study/add_to_study.dart';

class StudyToday extends StatelessWidget {
  StudyToday({Key? key, required this.taskName}) : super(key: key);

  String taskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stuff to Study Today",
            style: TextStyle(
                color: Colors.black,
        )),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const StudyPlannerPage()));
        },
        ),
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.book),
              title: Text(taskName),
            )
          ],
        ),
      ),
    );
  }
}