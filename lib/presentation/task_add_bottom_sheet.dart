import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wondertask/provider/todo_list.dart';

class TaskAddBottomSheet extends StatelessWidget {


  late String textInput;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 55),
          child: Column(children: [
            Text(
              'New Task',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent),
            ),
            SizedBox(height: 30,),
            TextField(
              onChanged: (value) {
                textInput= value;
              },
              cursorColor: Colors.lightBlueAccent,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(borderSide:BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 3
                  
                ) )
              ),        
                 
                   
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
                
                context.read<ToDoList>().addToDo(textInput);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
              color:Colors.lightBlueAccent,
              child: Center(child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),))),
            )
            
          ]),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        ),
        color: Color(0xFF757575));
  }
}
