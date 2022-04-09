import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_title.dart';
import 'package:flutter_state_management/models/task.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name:  'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name:  'Buy bread'),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index){
        return TaskTitle(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool checkboxState){
              setState(() {
                tasks[index].toggleDone();
              });
            }

        );
      },
      itemCount: tasks.length,
    );
  }
}