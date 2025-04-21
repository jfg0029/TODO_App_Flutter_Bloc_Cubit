import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_list_cubit.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel todo;
  const TodoItemWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Checkbox(value: todo.completed, 
      onChanged: (bool? checked) {
        context.read<TodoListCubit>().toogleTodo(todo.id);
      },
      ),
      title: Text(todo.desc),
    );
  }
}
