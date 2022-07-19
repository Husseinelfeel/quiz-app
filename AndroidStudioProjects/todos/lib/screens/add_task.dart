import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class addtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Text('AddTask',textAlign:TextAlign.center ,
           style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.indigo[400]),),
        TextField(
          autocorrect: true,
          autofocus: true,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15,),
        TextButton(onPressed: () {

        }, child:  Text('Add',style: TextStyle(color:Colors.white),),
          style: TextButton.styleFrom(backgroundColor: Colors.teal[400]),),
      ],
    ),);
  }
}
