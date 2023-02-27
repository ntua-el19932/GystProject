class Watch {
  String? id_w;
  String? movie;
  bool seen;

  Watch({
    required this.id_w,
    required this.movie,
    this.seen = false,
  });

  static List<Watch> watchList() {
    return [
      Watch(id_w: '01', movie: 'Avatar', seen: true),
      Watch(id_w: '02', movie: 'Black Panther 2'),
      Watch(id_w: '03', movie: 'Avengers: Endgame'),
      Watch(id_w: '04', movie: 'Spiderman'),
      Watch(id_w: '05', movie: 'Top Gun', seen: true),
    ];
  }
}
