import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/cubit/todo_list_cubit.dart';
import 'package:todo_app_cubit/widgets/todo_item_widget.dart';

class ShowTodosWidget extends StatelessWidget {
const ShowTodosWidget({ super.key });

  @override
  Widget build(BuildContext context){
    return BlocBuilder<TodoListCubit, TodoListState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: Colors.grey,
            );
          },
          itemCount: state.todos.length,
          itemBuilder: (context, index){
            return TodoItemWidget(todo: state.todos[index],
            );
          },          
        );
      },
    );
  }
}