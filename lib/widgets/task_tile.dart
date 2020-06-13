import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a task',
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) => setState(() => checked = value),
      ),
    );
  }
}
