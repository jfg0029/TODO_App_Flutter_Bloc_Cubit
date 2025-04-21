import 'package:bloc/bloc.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial());

  void toogleTodo(String id){
    final newTodos = state.todos.map((TodoModel todo) {
      if (todo.id == id){
        return TodoModel(id: id, desc: todo.desc, completed: !todo.completed,);
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: newTodos));
  }
}
