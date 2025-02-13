import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoApp(),
    );
  }
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TodoList')),
      drawer: Drawer(child: Center(child: Text('data'))),
      body: Container(

      ),
      floatingActionButton: WritePage(),
    );
  }
}

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}