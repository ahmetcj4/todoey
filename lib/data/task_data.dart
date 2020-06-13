import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get count => _tasks.length;

  get tasks => UnmodifiableListView(_tasks);

  add(String name) {
    _tasks.add(Task(name));
    notifyListeners();
  }

  toggle(int index) {
    _tasks[index].toggle();
    notifyListeners();
  }
}
