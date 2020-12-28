
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isChecked,this.taskTitle,this.checkBoxState});

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxState;

//  void checkBoxState(bool checkState){
//      print('Check State => $checkState');
//        setState(() {
//           isChecked = checkState;
//        });
//  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxState,
      ),
    );
  }
}