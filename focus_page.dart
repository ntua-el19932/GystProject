import 'package:flutter/material.dart';
import 'package:gyst/home_page.dart';
import 'package:gyst/templates/timer/countdown_page.dart';

class FocusPage extends StatelessWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CountdownPage(),
    );
  }
}