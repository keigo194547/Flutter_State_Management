import 'package:flutter/foundation.dart';
import 'package:flutter_state_management/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name:  'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name:  'Buy bread'),
  ];

  int get taskCount{
    return tasks.length;
  }

}