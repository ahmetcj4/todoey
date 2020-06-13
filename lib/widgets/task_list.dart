import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (c, data, child) => ListView.builder(
        itemCount: data.count,
        itemBuilder: (c, i) => TaskTile(i),
      ),
    );
  }
}
