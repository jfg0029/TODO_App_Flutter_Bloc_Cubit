part of 'todo_filter_bloc.dart';

abstract class TodoFilterEvent {}

class ChangeFilterEvent extends TodoFilterEvent {
  final Filter newFilter;

  ChangeFilterEvent({required this.newFilter});
}