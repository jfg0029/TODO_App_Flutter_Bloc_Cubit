import 'package:bloc/bloc.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'filtered_todos_event.dart';
part 'filtered_todos_state.dart';

class FilteredTodosBloc extends Bloc<FilteredTodosEvent, FilteredTodosState> {
  final List<TodoModel> initialTodos;
  FilteredTodosBloc({required this.initialTodos}) : super(FilteredTodosState.initial()) {
    on<CalculateFilteredTodosEvent>((event, emit) {
      emit(state.copyWith(filteredTodos: event.filteredTodos));
    });
  }
}
