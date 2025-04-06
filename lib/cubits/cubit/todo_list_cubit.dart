import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial());
}
