import 'package:flutter/material.dart';
import 'package:flutter_state_management/widgets/task_title.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}