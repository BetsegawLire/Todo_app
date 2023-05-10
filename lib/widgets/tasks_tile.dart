import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  var isChecked;
  final text;
  final checkboxCallback;
  final longPressCallback;

  TasksTile(
      {required this.text,
      required this.isChecked,
      required this.checkboxCallback,
      this.longPressCallback});

  // void checkboxCallback(var checkboxState) {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: FittedBox(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
