import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/cubit/filtered_todos_cubit.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_filter_cubit.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_list_cubit.dart';
import 'package:todo_app_cubit/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoListCubit>(create: (context) => TodoListCubit()),
        BlocProvider<TodoFilterCubit>(create: (context) => TodoFilterCubit()),
        BlocProvider<FilteredTodosCubit>(create: (context) => FilteredTodosCubit()),
      ],
      child: MaterialApp(title: 'Material App', home: HomeScreen()),
    );
  }
}
