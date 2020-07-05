import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange.shade400,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.orange.shade400,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.orange.shade400,
                  ),
                  radius: 22,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Todo",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "12 Tasks",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TasksList(),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile()
      ],
    );
  }
}

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("task"),
      trailing: Checkbox(value: false,),
    );
  }
}
