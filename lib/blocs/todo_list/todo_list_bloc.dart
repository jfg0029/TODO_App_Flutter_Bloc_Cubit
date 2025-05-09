import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'todo_list_event.dart';
part 'todo_list_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(TodoListState.initial()) {
    on<ToggleTodoEvent>(_toogleTodo);
  }

  void _toogleTodo(ToggleTodoEvent event, Emitter<TodoListState> emit) {
    final newTodos =
        state.todos.map((TodoModel todo) {
          if (todo.id == event.id) {
            return TodoModel(
              id: event.id,
              desc: todo.desc,
              completed: !todo.completed,
            );
          }
          return todo;
        }).toList();
    emit(state.copyWith(todos: newTodos));
  }
}
