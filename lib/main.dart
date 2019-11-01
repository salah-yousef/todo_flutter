import 'package:flutter/material.dart';
import 'package:todo_flutter/util/dbhelper.dart';
import 'package:todo_flutter/model/todo.dart';
import 'package:todo_flutter/screens/todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /* List<Todo> todos = List<Todo>();
    DateTime today = DateTime.now();
    DbHelper helper = DbHelper();
    helper
        .initializeDb()
        .then((result) => helper.getTodos().then((result) => todos = result));
    Todo todo1 =
        Todo("Buy Apples", 1, today.toString(), "Make sure Apples are fresh");
    helper.insertTodo(todo1);
    Todo todo2 =
        Todo("Buy Orange", 2, today.toString(), "Make sure Oranges are fresh");
    helper.insertTodo(todo2);
    Todo todo3 = Todo(
        "Buy Bannana", 3, today.toString(), "Make sure Bannanas are fresh");
    helper.insertTodo(todo3); */

    return MaterialApp(
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Todos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TodoList(),
    );
  }
}
