import 'package:flutter/material.dart';

class ToDoList with ChangeNotifier{

 List  _toDoListStrings = [];
 bool isChecked = false;
 

 List get toDoListStrings => _toDoListStrings;

 int get toDoListLength => _toDoListStrings.length;


 addToDo(String toDo){
   _toDoListStrings.add(toDo);
   notifyListeners();
 }

 
 removeToDO(String toDo){
   _toDoListStrings.remove(toDo);
   notifyListeners();
 }
}

