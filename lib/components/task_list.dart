import 'package:flutter/material.dart';
import 'package:to_do_app/components/task_tile.dart';
import 'package:to_do_app/models/Task.dart';

class TaskList extends StatefulWidget {

  final List<Task> list;

  TaskList(this.list);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
          return TaskTile(
            isChecked: widget.list[index].isChecked,
            taskTitle: widget.list[index].title,
            checkBoxState: (checkBoxState){
              setState(() {
                widget.list[index].toggleTask();
              });
            },

          );
        },
      itemCount: widget.list.length,
    );

  }
}