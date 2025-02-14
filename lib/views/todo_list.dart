import 'package:flutter/material.dart';
import 'package:todo_mission_ton/viewmodels/todo_view_model.dart';

class TodoListView extends StatefulWidget {
  TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  final vm = TodoListViewModel();

  @override
  Widget build(BuildContext context) {
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
      itemCount: vm.todoList.length,
      itemBuilder: (context, index) {
        return _todoListRow(index);
      },
    );
  }

  Widget _todoListRow(int index) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            vm.todoList[index].isCompleted.toggle();
            setState(() {});
          },
          icon: Icon(Icons.star),
        ),
        Text(vm.todoList[index].title),
      ],
    );
  }
}

extension BoolToggle on bool {
  bool toggle() => !this;
}
