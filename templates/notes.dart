import 'package:flutter/material.dart';
import 'package:gyst/menu_page.dart';
import 'package:gyst/templates/quick_notes/add_form_notes.dart';

class QuickNotesPage extends StatefulWidget {
  const QuickNotesPage({Key? key}) : super(key: key);

  @override
  State<QuickNotesPage> createState() => _QuickNotesPageState();
}

class _QuickNotesPageState extends State<QuickNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quick Notes",
            style: TextStyle(
                color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const MenuPage()));
        },
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddFormNotes()));
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