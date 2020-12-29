import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/components/task_tile.dart';
import 'package:to_do_app/models/Task.dart';
import 'package:to_do_app/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            final task = taskData.list[index];
            return TaskTile(
              isChecked: task.isChecked,
              taskTitle: task.title,
              checkBoxState: (checkBoxState){
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );

  }
}