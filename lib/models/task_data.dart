import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Task One"),
    Task(name: "Task Two"),
    Task(name: "Task Three"),
    Task(name: "Task Four")
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void changeCheckboxSate(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }

  void longpress(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
