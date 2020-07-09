import 'package:flutter/material.dart';
import 'package:fluttertodo/models/task_data.dart';
import 'package:fluttertodo/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, idx) {
        return TaskTile(
          Provider.of<TasksData>(context).tasks[idx],
//          () => setState(() => Provider.of<TasksData>(context).tasks[idx].toggleDone()),
        );
      },
      itemCount: Provider.of<TasksData>(context).tasks.length,
    );
  }
}

