
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top:60,right:30.0,left:30.0,bottom: 30.0),
        child: Column(
          children: <Widget>[
            Icon(Icons.list),
            Text('Todoey')
          ],
        ),
      )
    );
  }

}