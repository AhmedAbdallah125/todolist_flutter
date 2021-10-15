import 'package:flutter/material.dart';
import 'package:todolist_flutter/widgets/task_list.dart';

import 'add-task.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              // using arrow fun -- single line
              // anormous fun --> no named
              // context from upper
              builder: (context) => AddTask());
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                Container(
                  child: Text(
                    'To Do',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  child: Text(
                    '12 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: TaskList(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
