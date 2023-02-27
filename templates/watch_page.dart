import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/watch%20list/watch.dart';
import 'package:gyst/templates/watch%20list/watchList.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => WatchingListState();
}

class WatchingListState extends State<WatchListPage> {
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

  void movieChange(Watch index) {
    setState(() {});
    index.seen = !index.seen;
  }

  void deleteMovie(String id) {
    setState(() {
      movielist.removeWhere((item) => item.id_w == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Watch List",
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Icon(
            Icons.movie_outlined,
            color: black,
          ),
          Icon(Icons.check_box_outline_blank, color: const Color(0xFF8787C1))
        ],
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
                  for (Watch mv in movielist)
                    Movie(
                      w_movie: mv,
                      movieChanged: movieChange,
                      delete_movie: deleteMovie,
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
                        controller: movieController,
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
                          addNewMovie(movieController.text);
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
