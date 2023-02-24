import 'package:flutter/material.dart';
import 'package:startup_namer/constants.dart';
import 'package:startup_namer/profile/profile_page.dart';
import 'package:startup_namer/styles/button.dart';
import 'package:startup_namer/styles/colors.dart';
import 'package:startup_namer/main.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
      ),
      body: Center(
        child: Text("Update"),
      ),
    );
  }
}
