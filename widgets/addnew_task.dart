import 'package:flutter/material.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/widgets/todo_item.dart';
import 'package:gyst/widgets/to_do.dart';

class ToDoNew extends StatefulWidget {
  const ToDoNew({Key? key}) : super(key: key);

  @override
  State<ToDoNew> createState() => AddNewTodotask();
}

class AddNewTodotask extends State<ToDoNew> {
  final todoController = TextEditingController();
  final toDolist = ToDo.todoList();

  void addNewTask_(String newTask) {
    setState(() {
      toDolist.add(ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: newTask));
    });
    todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add New Task',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        foregroundColor: black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: button, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: todoController,
                decoration: const InputDecoration(
                  hintText: ('  Add a new task to do'),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 200)),
            ElevatedButton(
              onPressed: () {
                addNewTask_(todoController.text);
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
}
