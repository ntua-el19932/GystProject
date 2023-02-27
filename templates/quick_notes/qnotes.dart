import 'package:flutter/material.dart';
import 'package:gyst/templates/quick_notes/add_form_notes.dart';

class Qnotes extends StatelessWidget {
  Qnotes({Key? key, required this.noteName}) : super(key: key);

  String noteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Notes",
            style: TextStyle(
                color: Colors.black,
        )),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const AddFormNotes()));
        },
        ),
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.book),
              title: Text(noteName),
            )
          ],
        ),
      ),
    );
  }
}