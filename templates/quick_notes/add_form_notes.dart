import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/notes.dart';
import 'package:gyst/templates/quick_notes/qnotes.dart';

class AddFormNotes extends StatefulWidget {
  const AddFormNotes({Key? key}) : super(key: key);

  @override
  State<AddFormNotes> createState() => _AddFormNotesState();
}

final _noteController = TextEditingController();

@override
void dispose(){
  _noteController.dispose();
  dispose();
}

class _AddFormNotesState extends State<AddFormNotes> {

  var _noteName;
  // @override
  // void initState() {
  //   super.initState();

  //   _noteController.addListener(_updateText);
  // }

  // void _updateText() {
  //   setState(() {
  //     _noteName = _noteController.text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8787C1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const QuickNotesPage()));
        },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _noteController,
              decoration: const InputDecoration(
                labelText: 'Enter',
                prefixIcon: Icon(Icons.check_box),
                border: OutlineInputBorder(),
              ),
              // onChanged: (val) {
              //   _updateText(val);
              // },
            ),
            const SizedBox(height: 20.0,),
            myBtn(context),
            // Text("Task Name is ${_noteController.text}"),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Task Name',
            //     icon: Icon(Icons.check_box),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

ElevatedButton myBtn(BuildContext context) {    
  return ElevatedButton(
    style: saveButton,
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Qnotes(noteName: _noteController.text,);
        }),
      );
    },
    child: Text('Save', style: TextStyle(color: black)),
  );
}