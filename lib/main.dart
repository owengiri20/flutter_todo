import 'package:flutter/material.dart';
import 'package:fluttertodo/models/task_data.dart';
import 'package:fluttertodo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main()  => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: TasksScreen(),
      ),
      create: (context) => TasksData(),
    );
  }
}
