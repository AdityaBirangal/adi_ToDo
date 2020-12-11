import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ),
            FlatButton(
              minWidth: double.infinity,
              onPressed: () {},
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
