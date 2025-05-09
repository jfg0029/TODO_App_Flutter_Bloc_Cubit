import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/blocs/filtered_todos/filtered_todos_bloc.dart';
import 'package:todo_app_cubit/blocs/todo_filter/todo_filter_bloc.dart';
import 'package:todo_app_cubit/blocs/todo_list/todo_list_bloc.dart';
import 'package:todo_app_cubit/utils/todos_utils.dart';

import 'package:todo_app_cubit/widgets/todo_item_widget.dart';

class ShowTodosWidget extends StatelessWidget {
  const ShowTodosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<FilteredTodosBloc>().state.filteredTodos;
    return MultiBlocListener(
      listeners: [
        BlocListener<TodoFilterBloc, TodoFilterState>(
          listener: (context, state) {
            final filteredTodos = TodosUtils().setFilteredTodos(
              state.filter,
              context.read<TodoListBloc>().state.todos,
            );
            context.read<FilteredTodosBloc>().add(
              CalculateFilteredTodosEvent(filteredTodos: filteredTodos),
            );
          },
        ),
        BlocListener<TodoListBloc, TodoListState>(
          listener: (context, state) {
            final filteredTodos = TodosUtils().setFilteredTodos(
              context.read<TodoFilterBloc>().state.filter, state.todos,
            );

            context.read<FilteredTodosBloc>().add(
              CalculateFilteredTodosEvent(filteredTodos: filteredTodos),
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
