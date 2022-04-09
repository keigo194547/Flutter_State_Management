import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget{

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function removeTask;

  TaskTitle(
      {
        this.isChecked,this.taskTitle,
        this.checkboxCallback,this.removeTask
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      leading: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.grey,
        onPressed: removeTask,
      ),
    );
  }
}
