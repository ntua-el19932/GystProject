class Cardio {
  String? cardioEx;
  String? name;
  bool isdone;

  Cardio({
    required this.cardioEx,
    required this.name,
    this.isdone = false,
  });

  static List<Cardio> cardioExerciseList() {
    return [
      Cardio(cardioEx: '01', name: 'Run 2mins', isdone: true),
      Cardio(cardioEx: '02', name: 'Jump squats'),
      Cardio(cardioEx: '03', name: 'Jump Rope 3x45s'),
    ];
  }
}
