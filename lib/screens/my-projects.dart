import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('My Projects'),
        ),

        actions: [
          Container(
            // padding: EdgeInsets.all(8),
            child: GestureDetector(
              onTap: (){
              Navigator.pushNamed(
                context, '/newpost',
                // arguments: widget.usertype
              );
            },
              child: IconButton(
                
                icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  }, 
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              // padding: const EdgeInsets.symmetric(horizontal: 15.0),
              scrollDirection: Axis.vertical,
              // itemExtent: 100.0,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){
                return Container();
              },
            ),
          )
        ]
      ),

    );
  }
}