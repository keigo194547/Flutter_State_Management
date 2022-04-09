import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_title.dart';
import 'package:flutter_state_management/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();

}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index){
        return TaskTitle(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool checkboxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}