import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: 400.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)
              ),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0
              ),),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Text('Add',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  onPressed: (){
                    //add new tasks
                  },
                  color:Colors.lightBlueAccent,
                ),
              )
            ],
          ),
    ),
      ),
    );
  }
}
