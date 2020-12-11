import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  Icons.list,
                  color: Colors.cyanAccent,
                  size: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'ToDo',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
