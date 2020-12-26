import 'package:flutter/material.dart';
import 'package:to_do_app/components/task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}