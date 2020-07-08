import 'package:flutter/material.dart';
import 'package:fluttertodo/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> task = [];
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile()
      ],
    );
  }
}

