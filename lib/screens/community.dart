import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Groupify'),
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