class Task {
  final String name;
  bool isDone = false;

  Task(this.name);

  void toggle() => isDone = !isDone;
}
