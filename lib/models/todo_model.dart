import 'package:uuid/uuid.dart';

class Todo {
  var id = Uuid().v4();
  String title;
  String content;
  bool isCompleted;

  Todo({
    required this.title,
    required this.content,
    this.isCompleted = false,
  });
}
