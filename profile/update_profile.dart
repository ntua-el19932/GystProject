import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gyst/constants.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  String image = 'assets/images/profile_pic.png';

  File? imageFile;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Edit your profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(image)),
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
                      icon: const Icon(Icons.add_a_photo_outlined),
                      color: Colors.black,
                      iconSize: 20,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: Color(0xFFD3D3E2),
                                  title:
                                      const Text('Change your profile photo'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          getImage(source: ImageSource.gallery);
                                        },
                                        child: const Text(
                                          'Choose from library',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          getImage(source: ImageSource.camera);
                                        },
                                        child: const Text(
                                          'Take a photo',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Cancel',
                                          style:
                                              TextStyle(color: Colors.black54),
                                        )),
                                  ],
                                ));
                      },
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF5B5F97))),
                labelText: ("Name"),
                hintText: "Maria",
                fillColor: Colors.white,
                focusColor: Color(0xFF5B5F97),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              //Email
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF5B5F97))),
                labelText: ('Email'),
                hintText: 'name@example.com',
                prefixIcon: Icon(Icons.email, color: Color(0xFF5B5F97)),
                hoverColor: Color(0xFF5B5F97),
                focusColor: Color(0xFF5B5F97),
                fillColor: Colors.white,
              ),
              //onFieldSubmitted: (value) => nameController.text = value,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                userEmail = emailController.text;
                userName = nameController.text;

                emailController.clear();
                nameController.clear();
                Navigator.of(context).pop();
              },
              style: saveButton,
              child: const Text('Save', style: TextStyle(color: black)),
            ),
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
