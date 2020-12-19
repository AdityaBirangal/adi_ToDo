import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adi_todo/module/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.cyan, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            FlatButton(
              minWidth: double.infinity,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTitle: newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
