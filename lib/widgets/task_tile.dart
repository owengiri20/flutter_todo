import 'package:flutter/material.dart';
import 'package:fluttertodo/models/types.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile(this.task);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          task.name,
          style: TextStyle(
              decoration: task.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.orange.shade400,
          value: task.isDone,
          onChanged: (v) => {},
        ));
  }
}
