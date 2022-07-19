import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
const Tasktile({
Key? key,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return ListTile(
    title: Text('go shopping'),
    trailing: Checkbox(value: true, onChanged: null),
  );
}
}