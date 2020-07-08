import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange.shade400,
                  fontWeight: FontWeight.w600),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.orange.shade400,
              child: Text("Add", style: TextStyle(color: Colors.white),),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
