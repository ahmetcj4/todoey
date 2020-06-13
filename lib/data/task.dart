class Task {
  final String name;
  bool isDone = false;

  Task(this.name);

  bool toggle() {
    isDone = !isDone;
    return isDone;
  }
}
