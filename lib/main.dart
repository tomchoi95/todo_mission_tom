import 'package:flutter/material.dart';
import 'views/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Mission',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: TodoListView(),
    );
  }
}
