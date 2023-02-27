import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/workout/abs/abs_page.dart';
import 'package:gyst/templates/workout/cardio/cardio_page.dart';
import 'package:gyst/templates/workout/upperbody/upperbody_page.dart';
import 'package:gyst/templates/workout/legs/legday_page.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workout",
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
        actions: const [
          Icon(
            Icons.fitness_center_rounded,
            color: black,
          ),
          Icon(Icons.check_box_outline_blank, color: Color(0xFF8787C1))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              ElevatedButton(
                  child: const Text('Leg Day', style: TextStyle(color: black)),
                  style: buttonPr,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LegPage()));
                  }),
              const SizedBox(height: 10),
              const Divider(),
              ElevatedButton(
                style: buttonPr,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpperPage()));
                },
                child: const Text('Upper Body Day',
                    style: TextStyle(color: black)),
              ),
              const SizedBox(height: 10),
              const Divider(),
              ElevatedButton(
                  child: const Text('Cardio', style: TextStyle(color: black)),
                  style: buttonPr,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CardioPage()));
                  }),
              const SizedBox(height: 10),
              const Divider(),
              ElevatedButton(
                  child: const Text('Abs', style: TextStyle(color: black)),
                  style: buttonPr,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AbsPage()));
                  }),
              const SizedBox(height: 10),
              const Divider(),
            ],
          ),
        ),
      )),
    );
  }
}
