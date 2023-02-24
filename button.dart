import 'package:flutter/material.dart';
import 'package:startup_namer/styles/colors.dart';

final ButtonStyle buttonPr = ElevatedButton.styleFrom(
    minimumSize: Size(350, 80),
    backgroundColor: button,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(10),
    )));
