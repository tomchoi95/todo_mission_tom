import 'package:flutter/material.dart';
import 'views/todo_list.dart';

// 애플리케이션의 진입점
void main() {
  runApp(MyApp());
}

// MyApp 클래스는 애플리케이션의 루트 위젯입니다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Mission',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoListScreen(), // TodoListScreen 위젯을 홈 화면으로 설정
    );
  }
}
