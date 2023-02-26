import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/widgets/to_do.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final toDoChanged;
  final dlt;

  const ToDoItem(
      {Key? key,
      required this.todo,
      required this.toDoChanged,
      required this.dlt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          toDoChanged(todo);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            dlt(todo.id);
          },
        ),
      ),
    );
  }
}
