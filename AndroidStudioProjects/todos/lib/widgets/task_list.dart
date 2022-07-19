import 'package:flutter/material.dart';
import 'package:todos/widgets/task_listtile.dart';

class tasklist extends StatelessWidget {
  const tasklist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasktile(),
        Divider(
          height: 2,
        ),
        Tasktile(),
        Divider(
          height: 2,
        ),
        Tasktile(),
        Divider(
          height: 2,
        ),
        Tasktile(),
        Divider(
          height: 2,
        ),
        Tasktile(),
        Divider(
          height: 2,
        ),
      ],
    );
  }
}


