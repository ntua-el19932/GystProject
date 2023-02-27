import 'package:flutter/material.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/study/add_form.dart';

class AddToStudy extends StatefulWidget {
  const AddToStudy({super.key});

  @override
  State<AddToStudy> createState() => _AddToStudyState();
}

class _AddToStudyState extends State<AddToStudy> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Add to Study Planner",
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddFormPage()));
        },
        backgroundColor: const Color(0xFF5B5F97),
        child: const Icon(Icons.add),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/study.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
