part of 'filtered_todos_bloc.dart';

class FilteredTodosState {
  final List<TodoModel> filteredTodos;

  FilteredTodosState({required this.filteredTodos});

  factory FilteredTodosState.initial() {
    return FilteredTodosState(filteredTodos: []);
  }

  FilteredTodosState copyWith({List<TodoModel>? filteredTodos}) {
    return FilteredTodosState(
      filteredTodos: filteredTodos ?? this.filteredTodos,
    );
  }
}
