import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/workout/cardio/cardio.dart';
import 'package:gyst/templates/workout/legs/leg.dart';

class legExercise extends StatelessWidget {
  final LegDay legX;
  final legChanged;
  final deleteLegEx;

  const legExercise(
      {Key? key,
      required this.legX,
      required this.legChanged,
      required this.deleteLegEx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          legChanged(legX);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            legX.isdone ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          legX.name!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: legX.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            deleteLegEx(legX.legEx);
          },
        ),
      ),
    );
  }
}
