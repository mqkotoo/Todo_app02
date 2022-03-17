import 'package:flutter/foundation.dart';
import 'package:todo_app02/models/task_model.dart';


class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'task'),
    Task(name: 'task2'),
    Task(name: 'task3'),
  ];

}