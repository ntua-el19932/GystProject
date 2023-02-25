import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/widgets/todo_item.dart';
import 'package:gyst/widgets/to_do.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final todolist = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List",
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                for (ToDo todo1 in todolist)
                  ToDoItem(
                    todo: todo1,
                  ),
              ],
            ),
            FloatingActionButton.extended(
              onPressed: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context) => const AddnewTesk));
              },
              backgroundColor: dark,
              icon: const Icon(
                Icons.add,
                color: white,
              ),
              label: const Text('Add New Task'),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
