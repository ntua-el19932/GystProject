class LegDay {
  String? legEx;
  String? name;
  bool isdone;

  LegDay({
    required this.legEx,
    required this.name,
    this.isdone = false,
  });

  static List<LegDay> legdayExerciseList() {
    return [
      LegDay(legEx: '01', name: '4x10 Leg Curls'),
      LegDay(legEx: '02', name: '4x10 Hip Thrust'),
      LegDay(legEx: '03', name: '4x10 Glute Bridge'),
      LegDay(legEx: '04', name: '3x15 Leg Press'),
    ];
  }
}
