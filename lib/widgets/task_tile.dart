import 'package:flutter/material.dart';
import 'package:todoey/data/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function toggle;

  const TaskTile(
    this.task, {
    Key key,
    this.toggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) => toggle(),
      ),
    );
  }
}
