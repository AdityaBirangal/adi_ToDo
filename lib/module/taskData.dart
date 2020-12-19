import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:adi_todo/module/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskTitle: 'One'),
    Task(taskTitle: 'Two'),
    Task(taskTitle: 'three'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask({String newTitle}) {
    final task = Task(taskTitle: newTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
