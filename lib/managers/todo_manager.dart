import '../models/todo_model.dart';

class TodoManager {
  static final TodoManager _instance = TodoManager._internal();

  // 할 일 목록을 저장하는 리스트
  final List<TodoModel> _todoItems = [];

  // private 생성자
  TodoManager._internal();

  // 싱글톤 인스턴스를 반환하는 팩토리 생성자
  factory TodoManager() {
    return _instance;
  }

  // 할 일 목록을 반환하는 메서드
  List<TodoModel> get todoItems => _todoItems;

  // 새로운 할 일 항목을 추가하는 메서드
  void addTodoItem(TodoModel task) {
    _todoItems.add(task);
  }

  // 할 일 항목을 삭제하는 메서드
  void removeTodoItem(String id) {
    _todoItems.removeWhere((task) => task.id == id);
  }
}
