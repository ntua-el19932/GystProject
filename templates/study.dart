import 'package:flutter/material.dart';

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
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body : const Center(
        child: Text('New Page'),
      ), 
    );
  }
}