import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/cubit/filtered_todos_cubit.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_filter_cubit.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_list_cubit.dart';
import 'package:todo_app_cubit/widgets/todo_item_widget.dart';

class ShowTodosWidget extends StatelessWidget {
  const ShowTodosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<FilteredTodosCubit>().state.filteredTodos;
    return MultiBlocListener(
      listeners: [
        BlocListener<TodoFilterCubit, TodoFilterState>(
          listener: (context, state) {
            context.read<FilteredTodosCubit>().setFilteredTodos(
              state.filter,
              context.read<TodoListCubit>().state.todos,
            );
          },
        ),
        BlocListener<TodoListCubit, TodoListState>(
          listener: (context, state) {
            context.read<FilteredTodosCubit>().setFilteredTodos(
              context.read<TodoFilterCubit>().state.filter,
              state.todos,
            );
          },
        ),
      ],
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: Colors.grey);
        },
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoItemWidget(todo: todos[index]);
        },
      ),
    );
  }
}
