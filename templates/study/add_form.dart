import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/study.dart';
import 'package:gyst/templates/study/study_today.dart';

class AddFormPage extends StatefulWidget {
  const AddFormPage({Key? key}) : super(key: key);

  @override
  State<AddFormPage> createState() => _AddFormPageState();
}

final _taskController = TextEditingController();

class _AddFormPageState extends State<AddFormPage> {

  var _taskName;
  // @override
  // void initState() {
  //   super.initState();

  //   _taskController.addListener(_updateText);
  // }

  // void _updateText() {
  //   setState(() {
  //     _taskName = _taskController.text;
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
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const StudyPlannerPage()));
        },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _taskController,
              decoration: const InputDecoration(
                labelText: 'Task Name',
                prefixIcon: Icon(Icons.check_box),
                border: OutlineInputBorder(),
              ),
              // onChanged: (val) {
              //   _updateText(val);
              // },
            ),
            const SizedBox(height: 20.0,),
            myBtn(context),
            // Text("Task Name is ${_taskController.text}"),
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
    style: SaveButton,
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return StudyToday(taskName: _taskController.text,);
        }),
      );
    },
    child: Text('Save', style: TextStyle(color: black)),
  );
}