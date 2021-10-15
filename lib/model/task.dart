class Task {
  final String name;
  bool isDone;
  // make isDone has default value at starting
  Task({required this.name, this.isDone = false});
  // make method that change state of checkbox each clicked
  void toggleDone() {
    isDone = !isDone;
  }
}
