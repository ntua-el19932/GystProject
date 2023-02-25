class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Clean the room', isDone: true),
      ToDo(id: '02', todoText: 'Go to supermarket', isDone: true),
      ToDo(id: '03', todoText: 'Study for the exam'),
      ToDo(id: '04', todoText: 'Yoga class'),
      ToDo(id: '05', todoText: 'Call yiayia'),
      ToDo(id: '06', todoText: 'Practice coding'),
      ToDo(id: '07', todoText: 'Throw the rubbish', isDone: true),
    ];
  }
}
