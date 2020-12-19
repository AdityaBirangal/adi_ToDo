import 'package:flutter/material.dart';
import 'package:adi_todo/screen/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:adi_todo/module/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      // builder: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
