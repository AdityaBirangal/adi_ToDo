import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckBoxState;
  final Function deleteTask;
  TaskTitle(
      {this.taskTitle,
      this.isChecked,
      this.toggleCheckBoxState,
      this.deleteTask});

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
      onLongPress: deleteTask,
    );
  }
}
