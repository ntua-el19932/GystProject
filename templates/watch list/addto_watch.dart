import 'package:flutter/material.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/watch%20list/watch.dart';

class WatchNew extends StatefulWidget {
  const WatchNew({Key? key}) : super(key: key);

  @override
  State<WatchNew> createState() => AddToWatchList();
}

class AddToWatchList extends State<WatchNew> {
  final movieController = TextEditingController();
  final movielist = Watch.watchList();

  void addNewMovie(String movie) {
    setState(() {
      movielist.add(Watch(
          id_w: DateTime.now().millisecondsSinceEpoch.toString(),
          movie: movie));
    });
    movieController.clear();
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
        title: const Text('Add to your Watch List',
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
                controller: movieController,
                decoration: const InputDecoration(
                  hintText: ('  Titanic'),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 200)),
            ElevatedButton(
              onPressed: () {
                addNewMovie(movieController.text);
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
