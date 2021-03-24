import 'package:flutter/material.dart';

class MyTasks extends StatefulWidget {
  MyTasks({Key key}) : super(key: key);

  @override
  _MyTasksState createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('My Tasks'),

        actions: [
          IconButton(
            
            icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  }, 
          )
        ],
      ),
    );
  }
}