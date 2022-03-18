import 'package:flutter/foundation.dart';
import 'package:todo_app02/models/task_model.dart';


class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'task'),
    Task(name: 'task2'),
    Task(name: 'task3'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

}