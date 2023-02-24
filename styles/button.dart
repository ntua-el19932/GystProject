import 'package:flutter/material.dart';
import 'package:startup_namer/styles/colors.dart';

final ButtonStyle buttonPr = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    minimumSize: Size(350, 80),
    primary: button, //background color
    onPrimary: black, //text color
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(10),
    )));

final ButtonStyle SaveButton = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: 21),
    minimumSize: Size(105, 38),
    primary: dark, //background color
    onPrimary: black, //text color
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(100),
    )));
