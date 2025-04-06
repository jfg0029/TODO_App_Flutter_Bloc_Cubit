part of 'todo_list_cubit.dart';

class TodoListState {
  final List<TodoModel> todos;

  TodoListState({required this.todos});

  factory TodoListState.initial() {
    return TodoListState(
      todos: [
        TodoModel(id: "1", desc: "Hacer ejercicio"),
        TodoModel(id: "2", desc: "estudiar flutter"),
        TodoModel(id: "3", desc: "daily"),
      ],
    );
  }

  TodoListState copyWith({List<TodoModel>? todos}) {
    return TodoListState(todos: todos ?? this.todos);
  }
}
