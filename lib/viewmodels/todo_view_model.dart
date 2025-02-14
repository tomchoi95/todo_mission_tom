import 'package:flutter/material.dart';
import '../models/todo_model.dart';
import '../managers/todo_manager.dart';

class TodoViewModel extends ChangeNotifier {
  final TodoManager _todoManager = TodoManager();

  List<TodoModel> get todoItems => _todoManager.todoItems;

  void addTodoItem(String title, String content) {
    final newTask = TodoModel(
      id: DateTime.now().toString(),
      title: title,
      content: content,
    );
    _todoManager.addTodoItem(newTask);
    notifyListeners();
  }

  void removeTodoItem(String id) {
    _todoManager.removeTodoItem(id);
    notifyListeners();
  }

  void promptAddTodoItem(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTitle = '';
        String newContent = '';
        return AlertDialog(
          title: Text('Add a new task'),
          content: Column(
            children: [
              TextField(
                autofocus: true,
                decoration: InputDecoration(labelText: 'Title'),
                onChanged: (val) {
                  newTitle = val;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Content'),
                onChanged: (val) {
                  newContent = val;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                addTodoItem(newTitle, newContent);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildTodoList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < todoItems.length) {
          return buildTodoItem(todoItems[index]);
        }
        return null;
      },
    );
  }

  Widget buildTodoItem(TodoModel todo) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.content),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          removeTodoItem(todo.id);
        },
      ),
    );
  }
}
