import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'bottom_sheet_screen.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  // Widget modalBottomSheet(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => BottomSheetScreen((newText) {
                    // print(newText);
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(Task(name: newText));
                    // setState(() {
                    //   tasks.add(Task(name: newText));
                    // });
                    Navigator.pop(context);
                  })

              // builder: (context) => modalBottomSheet(context),
              );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              bottom: 30,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 70,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "TODO TASKS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "${Provider.of<TaskData>(context).tasks.length} Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
