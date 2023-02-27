import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/templates/watch%20list/watch.dart';
import 'package:gyst/templates/watch%20list/watchList.dart';
import 'package:gyst/templates/watch list/addto_watch.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => WatchingListState();
}

class WatchingListState extends State<WatchListPage> {
  final movietoWatch = Watch.watchList();

  void movieChange(Watch index) {
    setState(() {});
    index.seen = !index.seen;
  }

  void deleteMovie(String id) {
    setState(() {
      movietoWatch.removeWhere((item) => item.id_w == id);
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
        actions: [
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
                  for (Watch mv in movietoWatch)
                    Movie(
                      w_movie: mv,
                      movieChanged: movieChange,
                      delete_movie: deleteMovie,
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
                            builder: (context) => const WatchNew()));
                  },
                  label: const Text("Add New Movie"),
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
