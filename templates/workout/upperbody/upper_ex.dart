import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/workout/upperbody/upper.dart';

class upperExercise extends StatelessWidget {
  final Upper upperX;
  final upperChanged;
  final deleteUpperEx;

  const upperExercise(
      {Key? key,
      required this.upperX,
      required this.upperChanged,
      required this.deleteUpperEx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          upperChanged(upperX);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            upperX.isdone ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          upperX.name!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: upperX.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            deleteUpperEx(upperX.upperEx);
          },
        ),
      ),
    );
  }
}
