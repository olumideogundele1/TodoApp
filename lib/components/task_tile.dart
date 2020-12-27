
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxState(bool checkState){
      print('Check State => $checkState');
        setState(() {
           isChecked = checkState;
        });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),),
      trailing: TaskCheckBox(isChecked,checkBoxState),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  final bool isChecked;
  final Function toggleCheckBox;

  TaskCheckBox(this.isChecked, this.toggleCheckBox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: toggleCheckBox,
    );
  }
}