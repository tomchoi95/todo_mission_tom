import 'package:todo_mission_ton/models/todo_model.dart';

class TodoManager {
  List<Todo> todoList = [];

  // 생성시 데이터 초기화 하는 함수 구현 해야함.
  static final _instance = TodoManager._internal();

  // 생성자 숨기기.
  TodoManager._internal() {
    _loadTodos();
  }

  factory TodoManager() {
    return _instance;
  }

  void addTodo(Todo todo) {
    todoList.add(todo);
    _saveTodos();
  }

  void removeTodo(Todo todo) {
    todoList.removeWhere((todoInList) => todoInList.id == todo.id);
    _saveTodos();
  }

  void _loadTodos() {
    todoList += [
      Todo(title: 'Sample Todo 1', content: 'This is a sample todo item 1'),
      Todo(title: 'Sample Todo 2', content: 'This is a sample todo item 2'),
      Todo(title: 'Sample Todo 3', content: 'This is a sample todo item 3'),
    ];
  }

  void _saveTodos() {}
}
