import 'package:flutter/material.dart';
import 'package:todo_flutter/model/todo.dart';
import 'package:todo_flutter/util/dbhelper.dart';
import 'package:intl/intl.dart';

class TodoDetail extends StatefulWidget {
  final Todo todo;
  TodoDetail(this.todo) {
    if (todo == null) {
      throw ArgumentError(
          "todo of TodoDetail cannot be null. Received: '$todo'");
    }
  }
  @override
  _TodoDetailState createState() => _TodoDetailState(todo);
}

class _TodoDetailState extends State<TodoDetail> {
  final Todo todo;
  _TodoDetailState(this.todo);
  final _priorities = ["High", "Medium", "Low"];
  String _priority = "Low";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = todo.title;
    descriptionController.text = todo.description;
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(todo.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: descriptionController,
            style: textStyle,
            decoration: InputDecoration(
                labelText: "Description",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          TextField(
            controller: titleController,
            style: textStyle,
            decoration: InputDecoration(
                labelText: "Title",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          DropdownButton<String>(
            items: _priorities.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            style: textStyle,
            value: "Low",
            onChanged: null,
          )
        ],
      ),
    );
  }
}
