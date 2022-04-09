import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_title.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/models/task_data.dart';

class TasksList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context , index){
            return TaskTitle(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (bool checkboxState){
                  //   setState(() {
                  //     Provider.of<TaskDate>(context).tasks[index].toggleDone();
                  //   });
                }
                );
            },
        itemCount: taskData.taskCount,
        );
      },

    );
  }
}