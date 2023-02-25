import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';

final ButtonStyle buttonPr = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    minimumSize: const Size(350, 80),
    backgroundColor: button, //background color
    foregroundColor: black, //text color
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(10),
    )));

final ButtonStyle saveButton = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 21),
    minimumSize: const Size(105, 38),
    backgroundColor: dark, //background color
    foregroundColor: black, //text color
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(100),
    )));
