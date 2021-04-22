import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  ChatRoom({Key key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Container(
        //   padding: EdgeInsets.all(8),
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.pushNamed(
        //         context, '/profile',
        //         // arguments: widget.usertype
        //       );
        //     },
        //     child: CircleAvatar(
        //       backgroundColor: Colors.black,
        //       child: Text("AK"),
        //       // radius: 10.0,
        //     ),
        //   ),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context, '/profile',
                    // arguments: widget.usertype
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("AK"),
                  radius: 16.0,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Application Development Project",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFEFEFEFE),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Front End Development Board",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        child: Column(
          children: [
            // ChatListView(),
            Container(
              margin: EdgeInsets.fromLTRB(16, 10, 16, 20),
              height: 40,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: widget.theMessage,
                      maxLines: 2,
                      minLines: 1,

                      textCapitalization: TextCapitalization.sentences,
                      // onChanged: (value) {
                      //   setState(() {
                      //     if (sent == true) {
                      //       value = '';
                      //       sent = false;
                      //     } else {
                      //       message = value;
                      //     }
                      //   });
                      // },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        suffixIcon: Container(
                          width: MediaQuery.of(context).size.width / 7,
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // message != ''
                              // ?
                              IconButton(
                                icon: Icon(Icons.cancel),
                                // iconSize: 20.0,
                                color: Colors.grey[600], onPressed: () {},
                                // onPressed: () {
                                //   widget.theMessage.clear();
                                //   message = '';
                                //   setState(() {});
                                // },
                              )
                              // :
                              // Container(
                              // ),
                            ],
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[1000],
                        focusColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintText: 'Type a Message..',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      // gradient: linearGradientvertical,
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.send),
                      iconSize: 20.0,
                      color: Colors.black, onPressed: () {},
                      // onPressed: () {
                      //   if (message != '') {
                      //     addMessage(message);
                      //     DatabaseService.withRid(rid: ride.rid)
                      //         .sendMessage(
                      //             ride,
                      //             Message(
                      //                 user.uid,
                      //                 DateTime.now().toString(),
                      //                 message,
                      //                 'text'));
                      //     widget.theMessage.clear();
                      //     message = '';
                      //     sent = false;
                      //     setState(() {});
                      //   }
                      // },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
