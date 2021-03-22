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
        title: Center(
          child: Text('My Tasks'),
        ),

        // actions: [
        //   Container(
        //     // padding: EdgeInsets.all(8),
        //     child: GestureDetector(
        //       onTap: (){
        //       Navigator.pushNamed(
        //         context, '/newpost',
        //         // arguments: widget.usertype
        //       );
        //     },
        //       child: IconButton(
                
        //         icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  }, 
        //       ),
        //     ),
        //   )
        // ],
      ),
    );
  }
}