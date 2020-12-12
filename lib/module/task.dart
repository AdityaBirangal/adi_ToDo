class Task {
  String taskTitle;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }

  Task({this.taskTitle, this.isDone = false});
}
