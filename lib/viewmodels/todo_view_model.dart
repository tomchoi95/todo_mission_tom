import 'package:todo_mission_ton/managers/todo_manager.dart';
import 'package:todo_mission_ton/models/todo_model.dart';

class TodoListViewModel {
  // 초기화 시, 매니저에서 데이터를 불러들임
  var _todoManager = TodoManager();
  List<Todo> get todoList => _todoManager.todoList;

  void addTodo(Todo todo) {
    _todoManager.addTodo(todo);
  }

  void removeTodo() {}
}
