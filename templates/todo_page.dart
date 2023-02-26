import 'package:flutter/material.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/widgets/addnew_task.dart';
import 'package:gyst/widgets/todo_item.dart';
import 'package:gyst/widgets/to_do.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final todolist = ToDo.todoList();

  void todoChange(ToDo todo) {
    setState(() {});
    todo.isDone = !todo.isDone;
  }

  void deleteItem(String id) {
    setState(() {
      todolist.removeWhere((item) => item.id == id);
    });
  }

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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  for (ToDo todo1 in todolist)
                    ToDoItem(
                      todo: todo1,
                      toDoChanged: todoChange,
                      dlt: deleteItem,
                    ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ToDoNew()));
                  },
                  label: const Text("Add New Task"),
                  //focusColor: dark,
                  style: addNew,
                  icon: const Icon(
                    Icons.add,
                    color: white,
                    size: 50,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
