import 'package:flutter/material.dart';
import 'package:todo_flutter/util/dbhelper.dart';
import 'package:todo_flutter/model/todo.dart';
import 'package:todo_flutter/screens/todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
