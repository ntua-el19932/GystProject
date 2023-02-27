class Abs {
  String? absEx;
  String? name;
  bool isdone;

  Abs({
    required this.absEx,
    required this.name,
    this.isdone = false,
  });

  static List<Abs> absExerciseList() {
    return [
      Abs(absEx: '01', name: '3x15 Crunches', isdone: true),
      Abs(absEx: '02', name: '3x15 Russian Twists'),
      Abs(absEx: '03', name: 'Plank 3x40s'),
    ];
  }
}
