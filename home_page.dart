import 'package:flutter/material.dart';
import 'package:gyst/constants.dart';
import 'package:gyst/widgets/todo_item.dart';
import 'package:gyst/widgets/to_do.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todolist = ToDo.todoList();

  void todoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
    if (todo.isDone) {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                backgroundColor: Color(0xFFD3D3E2),
                title: Icon(Icons.celebration_outlined, color: Colors.black),
                content: Text('You did it!'),
              ));
    }
  }

  void deleteItem(String id) {
    setState(() {
      todolist.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Text('Hello, ',
                    style: TextStyle(
                      fontSize: 30,
                    )),
                Text(userName, style: const TextStyle(fontSize: 30)),
                //const SizedBox(width: 100,),
                Image(
                  image: AssetImage('images/home_page.png'),
                  height: 190,
                )
              ],
            ),
            Container(
              width: 330,
              decoration: BoxDecoration(
                color: const Color(0xFFFFC85A),
                borderRadius: BorderRadius.circular(25),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 15),
                  Text(
                    '  Today',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //to do list
            for (ToDo todo1 in todolist)
              ToDoItem(
                todo: todo1,
                toDoChanged: todoChange,
                dlt: deleteItem,
              ),
          ],
        ),
      ),
    );
  }
}
