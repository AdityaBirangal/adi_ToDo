import 'package:flutter/material.dart';
import 'package:adi_todo/widgets/taskTitle.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
