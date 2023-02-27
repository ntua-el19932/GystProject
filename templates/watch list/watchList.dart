import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/watch list/watch.dart';

class Movie extends StatelessWidget {
  final Watch w_movie;
  final movieChanged;
  final delete_movie;

  const Movie(
      {Key? key,
      required this.w_movie,
      required this.movieChanged,
      required this.delete_movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          movieChanged(w_movie);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            w_movie.seen ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          w_movie.movie!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: w_movie.seen ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            delete_movie(w_movie.id_w);
          },
        ),
      ),
    );
  }
}
