import 'package:flutter/material.dart';

class CircularListIcon extends StatelessWidget {
  const CircularListIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,65,0,0),
      child: CircleAvatar(
        radius: 32,
        child: Icon(Icons.list, color: Colors.lightBlueAccent,size: 45,),
        backgroundColor: Colors.white,),
    );
  }
} 