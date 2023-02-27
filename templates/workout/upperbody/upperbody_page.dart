import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/workout/upperbody/upper.dart';
import 'package:gyst/templates/workout/upperbody/upper_ex.dart';

class UpperPage extends StatefulWidget {
  const UpperPage({Key? key}) : super(key: key);

  @override
  State<UpperPage> createState() => UpperState();
}

class UpperState extends State<UpperPage> {
  final exToDo = Upper.upperbodyExerciseList();
  final exerciseController = TextEditingController();

  void exChanged(Upper index) {
    setState(() {});
    index.isdone = !index.isdone;
  }

  void deleteEx(String id) {
    setState(() {
      exToDo.removeWhere((item) => item.upperEx == id);
    });
    exerciseController.clear();
  }

  void addExercise(String exercise) {
    setState(() {
      exToDo.add(Upper(
          upperEx: DateTime.now().millisecondsSinceEpoch.toString(),
          name: exercise));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upper Body",
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
                  for (Upper ex in exToDo)
                    upperExercise(
                      upperX: ex,
                      upperChanged: exChanged,
                      deleteUpperEx: deleteEx,
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
