import 'package:bloc/bloc.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'filtered_todos_state.dart';

class FilteredTodosCubit extends Cubit<FilteredTodosState> {
  FilteredTodosCubit() : super(FilteredTodosState.initial());

  void setFilteredTodos(Filter filter, List<TodoModel> todos) {
    List<TodoModel> filteredTodos;

    switch (filter) {
      case Filter.active:
        filteredTodos =
            todos.where((element) => element.completed == false).toList();
        break;
      case Filter.completed:
        filteredTodos =
            todos.where((element) => element.completed == true).toList();
        break;
      case Filter.all:
        filteredTodos = todos;
        break;
    }
    emit(state.copyWith(filteredTodos:  filteredTodos));
  }
}
