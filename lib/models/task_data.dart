import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/Task.dart';


class TaskData extends ChangeNotifier{

  List<Task> _list = [
    Task(title:'Pray in the Morning',isChecked: false),
    Task(title:'Do house chores',isChecked: false),
    Task(title:'Work out',isChecked: false),
    Task(title:'Coding',isChecked: false),
  ];

  UnmodifiableListView<Task> get list{
    return UnmodifiableListView(_list);
  }


  int get taskCount{
    return _list.length;
  }

  void addTask(Task newTask){
    _list.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task){
    _list.remove(task);
    notifyListeners();
  }

}