
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade400,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Icon(Icons.list),
            Text("Todo")
          ],
        ),
      ),
    );
  }
}
