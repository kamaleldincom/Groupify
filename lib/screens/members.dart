import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  Members({Key key}) : super(key: key);

  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Members'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            // itemExtent: 100.0,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                // onTap: () {
                //   Navigator.pushNamed(
                //     context, '/chatroom',
                //     // arguments: widget.usertype
                //   );
                // },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context, '/profile', // change later
                                  // arguments: widget.usertype
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Text("LA"),
                                radius: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              // width: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Loai Al-Sharee",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFEFEFEFE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Supervisor",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  // SizedBox(height: 4),
                                  // Text(
                                  //   "Loai: You can find some inspirations for that part in uplabs or dribble. or you could also",
                                  //   overflow: TextOverflow.ellipsis,
                                  //   maxLines: 2,
                                  //   style: TextStyle(
                                  //     color: Colors.white54,
                                  //     fontSize: 12,
                                  //     fontWeight: FontWeight.w400,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            // SizedBox( width: 8,),
                          ]),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.chat_bubble_outline_rounded,
                                color: Colors.white,
                                // size: 20,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context, '/chatroom',
                                  // arguments: widget.usertype
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                // size: 20,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context, '/chatroom',
                                  // arguments: widget.usertype
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
