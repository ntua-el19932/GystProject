import 'package:flutter/material.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/widgets/todo_item.dart';
import 'package:gyst/widgets/to_do.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
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

  void todoChange(ToDo todo) {
    setState(() {});
    todo.isDone = !todo.isDone;
  }

  void deleteItem(String id) {
    setState(() {
      toDolist.removeWhere((item) => item.id == id);
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
                  for (ToDo todo1 in toDolist)
                    ToDoItem(
                      todo: todo1,
                      toDoChanged: todoChange,
                      dlt: deleteItem,
                    ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, right: 20, left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: todoController,
                        decoration: const InputDecoration(
                          hintText: 'Add a new task',
                        ),
                      ),
                    )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: dark,
                            minimumSize: const Size(60, 60),
                            elevation: 10),
                        onPressed: () {
                          addNewTask_(todoController.text);
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(color: white, fontSize: 40),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
