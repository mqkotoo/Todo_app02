import 'package:flutter/material.dart';
import 'package:todo_app02/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(
                //   () {
                //     widget.tasks[index].toggleDone();
                //   },
                // );
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
