import 'package:flutter/material.dart';
import 'package:fluttertodo/models/types.dart';

class TaskTile extends StatelessWidget {
//  final bool isChecked;
//  final String title;
//  final Function toggleChecked;

  final Task task;
  final Function toggleChecked;


  TaskTile(this.task, this.toggleChecked, );

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
          onChanged: (v) => toggleChecked(),
        ));
  }
}

//() {
//setState(() {
//isChecked = !isChecked;
//});
//}
