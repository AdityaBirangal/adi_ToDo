import 'package:adi_todo/module/task.dart';
import 'package:flutter/material.dart';
import 'package:adi_todo/widgets/taskTitle.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<Task> tasks = [
    Task(taskTitle: 'One'),
    Task(taskTitle: 'Two'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
            taskTitle: tasks[index].taskTitle,
            isChecked: tasks[index].isDone,
            toggleCheckBoxState: (newValue) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
