import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wondertask/presentation/homescreen.dart';
import 'package:wondertask/provider/todo_list.dart';

void main() {
  runApp(
    MultiProvider(providers: [ChangeNotifierProvider(create: (_) => ToDoList() )],
    child:const WonderTask() ,)
    );
}

class WonderTask extends StatelessWidget {
  const WonderTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
      
    );
  }
}