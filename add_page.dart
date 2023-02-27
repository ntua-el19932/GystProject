import 'package:flutter/material.dart';
import 'package:gyst/templates/quick_notes/add_form_notes.dart';

class AddtoNotes extends StatelessWidget {
  const AddtoNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add to Quick Notes",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddFormNotes()));
        },
        backgroundColor: const Color(0xFF5B5F97),
        child: const Icon(Icons.add),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/notes.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
