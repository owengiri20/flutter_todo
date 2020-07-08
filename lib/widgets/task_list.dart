import 'package:flutter/material.dart';
import 'package:fluttertodo/models/types.dart';
import 'package:fluttertodo/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, idx) {
        return TaskTile(
          widget.tasks[idx],
          () => setState(() => widget.tasks[idx].toggleDone()),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

// () => setState(() => tasks.add(Task)),
