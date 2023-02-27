class Upper {
  String? upperEx;
  String? name;
  bool isdone;

  Upper({
    required this.upperEx,
    required this.name,
    this.isdone = false,
  });

  static List<Upper> upperbodyExerciseList() {
    return [
      Upper(upperEx: '01', name: '3x10 Dumbbell Raises'),
      Upper(upperEx: '02', name: '3x10 Shoulder Press'),
      Upper(upperEx: '03', name: '3x10 Press Machine'),
    ];
  }
}
