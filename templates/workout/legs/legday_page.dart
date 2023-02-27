import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/workout/legs/leg.dart';
import 'package:gyst/templates/workout/legs/leg_ex.dart';

class LegPage extends StatefulWidget {
  const LegPage({Key? key}) : super(key: key);

  @override
  State<LegPage> createState() => LegState();
}

class LegState extends State<LegPage> {
  final exToDo = LegDay.legdayExerciseList();
  final exerciseController = TextEditingController();

  void exChanged(LegDay index) {
    setState(() {});
    index.isdone = !index.isdone;
  }

  void deleteEx(String id) {
    setState(() {
      exToDo.removeWhere((item) => item.legEx == id);
    });
    exerciseController.clear();
  }

  void addExercise(String exercise) {
    setState(() {
      exToDo.add(LegDay(
          legEx: DateTime.now().millisecondsSinceEpoch.toString(),
          name: exercise));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Legs",
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Icon(
            Icons.fitness_center_rounded,
            color: black,
          ),
          Icon(Icons.check_box_outline_blank, color: const Color(0xFF8787C1))
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  for (LegDay ex in exToDo)
                    legExercise(
                      legX: ex,
                      legChanged: exChanged,
                      deleteLegEx: deleteEx,
                    ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, right: 20, left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: exerciseController,
                        decoration: const InputDecoration(
                          hintText: 'Add a new exercise',
                        ),
                      ),
                    )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: dark,
                            minimumSize: const Size(60, 60),
                            elevation: 10),
                        onPressed: () {
                          addExercise(exerciseController.text);
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(color: white, fontSize: 40),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
