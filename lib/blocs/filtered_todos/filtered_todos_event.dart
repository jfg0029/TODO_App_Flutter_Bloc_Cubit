part of 'filtered_todos_bloc.dart';

abstract class FilteredTodosEvent {}

class CalculateFilteredTodosEvent extends FilteredTodosEvent {
  final List<TodoModel> filteredTodos;

  CalculateFilteredTodosEvent({required this.filteredTodos});
}
