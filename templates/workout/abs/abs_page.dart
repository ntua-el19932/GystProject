import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/shopping list/add_shoppingItem.dart';
import 'package:gyst/templates/shopping list/shop_items.dart';
import 'package:gyst/templates/shopping list/shop.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/workout/abs/abs.dart';
import 'package:gyst/templates/workout/abs/abs_ex.dart';

class AbsPage extends StatefulWidget {
  const AbsPage({Key? key}) : super(key: key);

  @override
  State<AbsPage> createState() => Abs_Day();
}

class Abs_Day extends State<AbsPage> {
  final absExToDo = Abs.absExerciseList();
  final exerciseController = TextEditingController();

  void absChanged(Abs index) {
    setState(() {});
    index.isdone = !index.isdone;
  }

  void deleteEx(String id) {
    setState(() {
      absExToDo.removeWhere((item) => item.absEx == id);
    });
    exerciseController.clear();
  }

  void addExercise(String exercise) {
    setState(() {
      absExToDo.add(Abs(
          absEx: DateTime.now().millisecondsSinceEpoch.toString(),
          name: exercise));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abs",
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
                  for (Abs ex in absExToDo)
                    AbsExercise(
                      absX: ex,
                      absChanged: absChanged,
                      deleteAbsEx: deleteEx,
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
