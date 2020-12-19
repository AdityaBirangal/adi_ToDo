import 'package:adi_todo/module/task.dart';
import 'package:flutter/material.dart';
import 'package:adi_todo/widgets/taskTitle.dart';
import 'package:provider/provider.dart';
import 'package:adi_todo/module/taskData.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task task = taskData.tasks[index];
            return TaskTitle(
                taskTitle: task.taskTitle,
                isChecked: task.isDone,
                toggleCheckBoxState: (newValue) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
