import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/workout/abs/abs.dart';

class AbsExercise extends StatelessWidget {
  final Abs absX;
  final absChanged;
  final deleteAbsEx;

  const AbsExercise(
      {Key? key,
      required this.absX,
      required this.absChanged,
      required this.deleteAbsEx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          absChanged(absX);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            absX.isdone ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          absX.name!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: absX.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            deleteAbsEx(absX.absEx);
          },
        ),
      ),
    );
  }
}
