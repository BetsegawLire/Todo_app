import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'tasks_tile.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  // var text;

  // var isChecked;

  // List<Task> tasks = [
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final currentTask = Provider.of<TaskData>(context).tasks[index];
        return TasksTile(
          text: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (state) {
            Provider.of<TaskData>(context, listen: false)
                .changeCheckboxSate(currentTask);
          },
          longPressCallback: () {
            Provider.of<TaskData>(context, listen: false)
                .longpress(currentTask);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
