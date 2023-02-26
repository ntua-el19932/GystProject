import 'package:flutter/material.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/study/add_form.dart';

class AddToStudy extends StatelessWidget {
  const AddToStudy({Key? key}) : super(key: key);

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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddFormPage()));
        },
        backgroundColor: const Color(0xFF5B5F97),
        child: const Icon(Icons.add),
      ),
    );
  }
}