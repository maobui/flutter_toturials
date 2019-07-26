import 'package:flutter/material.dart';

class NaviSendDataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Passing Data',
      home: ToDosScreen(
        todos: List.generate(
            20,
            (i) => ToDo('Todo $i',
                'A description of what needs to be done for Todo $i')),
      ),
    );
  }
}

class ToDosScreen extends StatelessWidget {
  final List<ToDo> todos;

  const ToDosScreen({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(todo: todos[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final ToDo todo;

  const DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}

class ToDo {
  final String title;
  final String description;

  ToDo(this.title, this.description);
}
