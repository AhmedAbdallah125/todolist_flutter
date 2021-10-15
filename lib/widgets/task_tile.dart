import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChcekd;
  final String taskName;
  final Function(bool?) changeStateCallBack;

  TaskTile(
      {required this.taskName,
      required this.isChcekd,
      required this.changeStateCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskName,
          style: TextStyle(
              decoration: isChcekd ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          onChanged: changeStateCallBack, //checkCallBack,
          value: isChcekd,
        ));
  }
}

/*
(bool? newValue) {
            setState(() {
              isChcekd = newValue!;
            });
          },
*/



// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       value: isChecked,
//       onChanged: (bool? variable) {
//         setState(() {
//           isChecked = variable!;
//         });
//       },
//       title: Text(
//         'Buy tea',
//         style: TextStyle(
//             color: Colors.black,
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//     );
//   }
// }
