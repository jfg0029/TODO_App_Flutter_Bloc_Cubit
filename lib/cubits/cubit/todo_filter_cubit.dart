import 'package:bloc/bloc.dart';
import 'package:todo_app_cubit/models/todo_model.dart';

part 'todo_filter_state.dart';

class TodoFilterCubit extends Cubit<TodoFilterState> {
  TodoFilterCubit() : super(TodoFilterState.initial());

  void changeFilter(Filter newFilter){
    emit(state.copyWith(filter: newFilter));
  }
}
