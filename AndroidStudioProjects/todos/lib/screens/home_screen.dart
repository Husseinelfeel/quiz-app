// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todos/screens/add_task.dart';
import 'package:todos/widgets/task_list.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(isScrollControlled: true,
              context: context, builder: (context)=>SingleChildScrollView(child: Container(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: addtask())));
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.playlist_add_check,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "MyTodos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              "4 Tasks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: tasklist()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
