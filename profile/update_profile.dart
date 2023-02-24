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
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
    nameController.addListener(() => setState(() {}));
  }

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
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Edit your profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(ProfileImage)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: dark),
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo_outlined),
                    color: Colors.black,
                    iconSize: 20,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Name',
            textAlign: TextAlign.left,
          ),
          TextField(
            //Name
            controller: nameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5B5F97))),
              labelText: (UserName),
              hintText: 'Name',
              prefixIcon:
                  Icon(Icons.person_outline_sharp, color: Color(0xFF5B5F97)),
              hoverColor: Color(0xFF5B5F97),
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Email',
            textAlign: TextAlign.left,
          ),
          TextField(
            //Email
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF5B5F97))),
              labelText: (UserEmail),
              hintText: 'name@example.com',
              prefixIcon: Icon(Icons.email, color: Color(0xFF5B5F97)),
              hoverColor: Color(0xFF5B5F97),
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Text('Save', style: TextStyle(color: black)),
            style: SaveButton,
          ),
        ],
      ),
    );
  }
}
