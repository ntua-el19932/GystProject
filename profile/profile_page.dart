import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyst/constants.dart';
import 'package:gyst/profile/update_profile.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String buttonName = 'button';
  bool valNot1 = true;

  onChange1(bool nValue1) {
    setState(() {
      valNot1 = nValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(profileImage)),
                ),
                const SizedBox(height: 30),
                Text(userName, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                    label: const Text('Edit Profile',
                        style: TextStyle(color: black)),
                    style: buttonPr,
                    icon: const Icon(Icons.edit, color: black),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdateProfile()));
                    }),
                const SizedBox(height: 10),
                const Divider(),
                Stack(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Notifications',
                          style: TextStyle(color: black)),
                      style: buttonPr,
                      icon: const Icon(Icons.notifications_active_outlined,
                          color: black),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                activeColor: dark,
                                trackColor: grey,
                                value: valNot1,
                                onChanged: (bool newValue) {
                                  onChange1(newValue);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Log out', style: TextStyle(color: black)),
                  style: buttonPr,
                  icon: const Icon(Icons.logout, color: black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
