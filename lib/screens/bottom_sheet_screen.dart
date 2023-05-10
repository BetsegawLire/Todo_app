import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class BottomSheetScreen extends StatelessWidget {
  final tasksCallback;

  BottomSheetScreen(this.tasksCallback);

  @override
  Widget build(BuildContext context) {
    var inputTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          // color: Colors.white,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                onChanged: (value) {
                  inputTask = value;
                },
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: TextButton(
                    onPressed: () {
                      tasksCallback(inputTask);
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              )
            ],
          )),
    );
  }
}
