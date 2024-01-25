import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  // initial data
  List toDoList = [];
  // references the box
  final _myBox = Hive.box('tasks');

  void CreateInitialData() {
    toDoList = [];
  }

  void loadData() {
    toDoList = _myBox.get('TODO');
  }

  void updateDatabase() {
    _myBox.put("TODO", toDoList);
  }
}
