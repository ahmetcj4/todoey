import 'package:flutter/material.dart';
import 'package:todoey/data/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(int) toggle;

  TaskList(this.tasks, {this.toggle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (c, i) => TaskTile(
        tasks[i],
        toggle: () => toggle(i),
      ),
    );
  }
}
