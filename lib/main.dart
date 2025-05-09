import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/blocs/filtered_todos/filtered_todos_bloc.dart';
import 'package:todo_app_cubit/blocs/todo_filter/todo_filter_bloc.dart';
import 'package:todo_app_cubit/blocs/todo_list/todo_list_bloc.dart';
import 'package:todo_app_cubit/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoListBloc>(create: (context) => TodoListBloc()),
        BlocProvider<TodoFilterBloc>(create: (context) => TodoFilterBloc()),
        BlocProvider<FilteredTodosBloc>(create: (context) => FilteredTodosBloc(initialTodos: context.read<TodoListBloc>().state.todos,
        )),
      ],
      child: MaterialApp(title: 'Material App', home: HomeScreen()),
    );
  }
}
