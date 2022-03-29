import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wondertask/presentation/task_add_bottom_sheet.dart';
import 'package:wondertask/provider/todo_list.dart';
import 'package:wondertask/widgets/list_of_task.dart';

import '../widgets/circulat_list_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 18),
          child: SizedBox(
            height: 62,
            width: 62,
            child: FloatingActionButton(
              onPressed:(){showModalBottomSheet(context: context, builder: (BuildContext context)=> TaskAddBottomSheet());}  ,
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircularListIcon(),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w700),
                  ),
                  Text('${context.watch<ToDoList>().toDoListLength} Tasks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 25, 40),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ListOfTask()))
          ],
        ));
  }
}