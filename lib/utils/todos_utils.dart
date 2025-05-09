import 'package:todo_app_cubit/models/todo_model.dart';

class TodosUtils {
  
  List<TodoModel> setFilteredTodos(Filter filter, List<TodoModel> todos){
    List<TodoModel> filteredTodos;
    switch (filter){
      case Filter.active:
      filteredTodos = todos.where((element) => element.completed == false).toList();
        break;
      case Filter.completed:
      filteredTodos = todos.where((element) => element.completed == true).toList();
        break;
      case Filter.all:
      filteredTodos = todos;
        break;

    }
    return filteredTodos;
  }
}