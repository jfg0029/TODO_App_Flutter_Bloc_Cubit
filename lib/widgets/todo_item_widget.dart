import 'package:flutter/material.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel todo;
  const TodoItemWidget({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Checkbox(value: todo.completed, 
      onChanged: (bool? checked) {},
      ),
      title: Text(todo.desc),
    );
  }
}
