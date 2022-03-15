import 'package:flutter/material.dart';
import 'package:flutter_app/model/todo.dart';
import 'package:flutter_app/sidebar.dart';
import 'package:flutter_app/screen/todoScreen/detail.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({ Key? key }) : super(key: key);

  final todos = List<Todo>.generate(20, (i) => 
    Todo(title: 'Todo $i' , description: 'Todo Description $i')
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: ((context, i) {
          return ListTile(
            title: Text(todos[i].title!),
            onTap: () 
            => Navigator.push(context, MaterialPageRoute(builder: ((context) 
            => TodoDetail(todo: todos[i])))
          ));
        })
      ),
    );
  }
}