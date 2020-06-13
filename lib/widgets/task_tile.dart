import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data/task_data.dart';

class TaskTile extends StatelessWidget {
  final int index;

  const TaskTile(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Consumer<TaskData>(
        builder: (c, data, child) => ListTile(
          title: Text(
            data.tasks[index].name,
            style: TextStyle(
              decoration:
                  data.tasks[index].isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Checkbox(
            value: data.tasks[index].isDone,
            activeColor: Colors.lightBlueAccent,
            onChanged: (value) => data.toggle(index),
          ),
        ),
      );
}
