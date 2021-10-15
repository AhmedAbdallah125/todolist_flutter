import 'package:flutter/material.dart';
import 'package:todolist_flutter/model/task.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool isChecked = false;

  void changeChec(bool? newValue) {
    setState(() {
      isChecked = newValue!;
    });
  }

  /*
(bool? newValue) {
            setState(() {
              isChcekd = newValue!;
            });
          },
*/
  // make list of tasks class
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy tea'),
    Task(name: 'play ball')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: tasks[index].name,
            isChcekd: tasks[index].isDone,
            changeStateCallBack: (bool? newValue) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: tasks.length);
  }
}
