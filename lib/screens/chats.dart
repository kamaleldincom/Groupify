import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Chats'),
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