import 'package:flutter/material.dart';
import '../viewmodels/todo_view_model.dart';

// TodoListScreen 클래스는 할 일 목록 화면을 나타냅니다.
class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

// _TodoListScreenState 클래스는 TodoListScreen의 상태를 관리합니다.
class _TodoListScreenState extends State<TodoListScreen> {
  final TodoViewModel _todoViewModel = TodoViewModel(); // TodoViewModel 인스턴스 사용

  @override
  void initState() {
    super.initState();
    _todoViewModel.addListener(_update);
  }

  @override
  void dispose() {
    _todoViewModel.removeListener(_update);
    super.dispose();
  }

  void _update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: _todoViewModel.buildTodoList(), // 할 일 목록을 화면에 표시
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => _todoViewModel.promptAddTodoItem(
              context,
            ), // 플로팅 액션 버튼을 눌렀을 때 할 일 추가 입력 창을 표시
        tooltip: 'Add task',
        child: Icon(Icons.add),
      ),
    );
  }
}
