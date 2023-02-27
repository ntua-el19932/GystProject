import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/workout/cardio/cardio.dart';

class cardioExercise extends StatelessWidget {
  final Cardio cardioX;
  final cardioChanged;
  final deleteCardioEx;

  const cardioExercise(
      {Key? key,
      required this.cardioX,
      required this.cardioChanged,
      required this.deleteCardioEx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          cardioChanged(cardioX);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            cardioX.isdone ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          cardioX.name!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: cardioX.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            deleteCardioEx(cardioX.cardioEx);
          },
        ),
      ),
    );
  }
}
