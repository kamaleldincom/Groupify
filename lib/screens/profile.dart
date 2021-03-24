import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Ahmed Kamal'),
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