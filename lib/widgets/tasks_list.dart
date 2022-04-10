import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_title.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/models/task_data.dart';

class TasksList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final _taskData = Provider.of<TaskData>(context);
    return ListView.builder(
      itemBuilder: (context , index){
        final task = _taskData.tasks[index];
        return TaskTitle(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (bool checkboxState){
            _taskData.updateTask(task);
            },
          removeTask: () {
            if(task.isDone == true){
              print("press");
              _taskData.deleteTask(task);
            }
            },
        );
        },
      itemCount: _taskData.taskCount,
    );


  }
}