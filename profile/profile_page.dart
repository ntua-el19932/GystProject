import 'package:flutter/material.dart';
import 'package:startup_namer/constants.dart';
import 'package:startup_namer/profile/update_profile.dart';
import 'package:startup_namer/styles/button.dart';
import 'package:startup_namer/styles/colors.dart';
import 'package:startup_namer/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String ButtonName = 'button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/profile_pic.png')),
                ),
                const SizedBox(height: 20),
                Text('Anna'),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                    label: Text('Edit Profile', style: TextStyle(color: black)),
                    style: buttonPr,
                    icon: Icon(Icons.edit, color: black),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateProfile()));
                    }),
                const SizedBox(height: 5),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Notifications', style: TextStyle(color: black)),
                  style: buttonPr,
                  icon: Icon(Icons.notifications_active_outlined, color: black),
                ),
                const SizedBox(height: 5),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Log out', style: TextStyle(color: black)),
                  style: buttonPr,
                  icon: Icon(Icons.logout, color: black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
