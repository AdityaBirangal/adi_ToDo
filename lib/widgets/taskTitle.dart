import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckBoxState;
  TaskTitle({this.taskTitle, this.isChecked, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.cyan,
        value: isChecked,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
