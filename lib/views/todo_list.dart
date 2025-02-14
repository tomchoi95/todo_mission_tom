import 'package:flutter/material.dart';
import 'package:todo_mission_ton/viewmodels/todo_view_model.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    final VM = TodoListViewModel();

    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: _buildTodoList(),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildTodoList() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return _todoListRow(index);
      },
    );
  }

  Widget _todoListRow(int index) {
    final int indes = index;
    return Row(
      children: [
        IconButton(
          onPressed: () {
            // 완료 상태 토글 버튼 구현하기.
          },
          icon: Icon(Icons.star),
        ),
        Text('타이틀 들어갈 곳'),
      ],
    );
  }
}
