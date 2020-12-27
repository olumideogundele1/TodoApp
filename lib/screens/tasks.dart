
import 'package:flutter/material.dart';
import 'package:to_do_app/components/task_list.dart';
import 'package:to_do_app/screens/add_tasks.dart';

class TaskScreen extends StatelessWidget{

  Widget buildBottomSheet(BuildContext context){
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen()),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          //add bottom sheet widget
          showModalBottomSheet(
              context: context,
//              isScrollControlled: true,
              builder: buildBottomSheet);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:60,right:30.0,left:30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(Icons.list, size: 30.0,color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text('12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:18.0
                ),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 600.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0))
              ),
              child: TaskList(),
            ),
          ),
        ],
      )
    );
  }

}