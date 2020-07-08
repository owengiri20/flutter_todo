import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked, () {
        setState(() {
          isChecked = !isChecked;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckbox;
  TaskCheckbox(this.checkboxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orange.shade400,
      value: checkboxState,
      onChanged: (v) {
        toggleCheckbox();
      },
    );
  }
}
