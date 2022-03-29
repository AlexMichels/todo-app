import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wondertask/provider/todo_list.dart';
import 'package:wondertask/widgets/single_task_entry.dart';

class ListOfTask extends StatelessWidget {
  const ListOfTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      itemBuilder: (context, index){
        return SingleTaskEntry(title: context.read<ToDoList>().toDoListStrings[index]);
      },
      itemCount: context.watch<ToDoList>().toDoListLength ,
    );
  }
}