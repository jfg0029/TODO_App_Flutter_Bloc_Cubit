part of 'todo_list_bloc.dart';

abstract class TodoListEvent {}

class ToggleTodoEvent extends TodoListEvent {
  final String id;

  ToggleTodoEvent({required this.id});
}
