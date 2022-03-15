import 'package:flutter/material.dart';
import 'package:flutter_app/model/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;
  const TodoDetail({ Key? key ,required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title!),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Text(todo.description!),
      ),
    );
  }
}