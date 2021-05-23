import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProjectDash extends StatefulWidget {
  @override
  _ProjectDashState createState() => _ProjectDashState();
}

class _ProjectDashState extends State<ProjectDash> {
  double percent = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Application Development Project',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          // textAlign: TextAlign.center,
          style: TextStyle(
            // color: Color(0xFEFEFEFE),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.white,
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
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  // enableDrag: true,
                  isDismissible: true,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  builder: (BuildContext bc) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 40),
                      height: MediaQuery.of(context).size.height / 3,
                      child: Column(children: <Widget>[
                        //modal title
                        //
                        //
                        SizedBox(
                          // height: 15,
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: 5,
                            width: 35,
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),

                        //
                        //
                        //
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
                            // color: Colors.grey[900],
                            textColor: Colors.white,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  // color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Project details",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),

                        //
                        //
                        //

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
                            // color: Colors.grey[900],
                            textColor: Colors.white,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.people_outline,
                                  // color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Members",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
                            // color: Colors.grey[900],
                            textColor: Colors.blueAccent,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.post_add_outlined,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Post project to Community",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
                            // color: Colors.grey[900],
                            textColor: Colors.redAccent,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delete_outline,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Delete project",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    );
                  });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 16),
          child: Column(
            children: [
              /// Annoucements section
              /// ....................
              Container(
                // margin: EdgeInsets.only(left: 16),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Announcements",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFEFEFEFE),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            // enableDrag: true,
                            isDismissible: true,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            builder: (BuildContext bc) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 40),
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                child: Column(children: <Widget>[
                                  //modal title
                                  //
                                  //
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 10, 8, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Post Announcement",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        IconButton(
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.grey,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  //content
                                  //
                                  //
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                fillColor: Colors.grey[900],
                                                filled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(15.0),
                                                        ),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[900],
                                                            width: 1.0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(15.0),
                                                        ),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[700],
                                                            width: 1.0)),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 10),
                                                border: InputBorder.none,
                                                hintText: 'Title'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextField(
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                fillColor: Colors.grey[900],
                                                filled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(15.0),
                                                        ),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[900],
                                                            width: 1.0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(15.0),
                                                        ),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[700],
                                                            width: 1.0)),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 10),
                                                border: InputBorder.none,
                                                hintText: 'Text'),
                                          ),
                                        ),
                                        // Text(
                                        //   "*You can later edit task status, members, etc.. by clicking on the task",
                                        //   overflow: TextOverflow.ellipsis,
                                        //   maxLines: 2,
                                        //   style: TextStyle(
                                        //       fontSize: 10.0,
                                        //       fontWeight: FontWeight.w700,
                                        //       color: Colors.grey),
                                        // ),
                                      ],
                                    ),
                                  ),

                                  //actions
                                  //
                                  //
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 150,
                                            child: FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                // color: Color(0xFEFEFEFE),
                                                // textColor: Colors.blueAccent,
                                                child: Text("Cancel",
                                                    style: TextStyle(
                                                      // color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                  // side: BorderSide(color: Colors.black),
                                                )),
                                          ),
                                          SizedBox(
                                            width: 150,
                                            child: FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamedAndRemoveUntil(
                                                          // context,
                                                          '/login',
                                                          (Route<dynamic>
                                                                  route) =>
                                                              false
                                                          // arguments: widget.usertype
                                                          );
                                                },
                                                color: Colors.blueAccent,
                                                textColor: Colors.black,
                                                child: Text("Post",
                                                    style: TextStyle(
                                                      // color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                  // side: BorderSide(color: Colors.black),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              );
                            });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 90,
                margin: EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 320,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors
                              .grey, //                   <--- border color
                          width: 2,
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Congrats!!",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFEFEFEFE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Congratulations Team, we have successfully finished the first phase of development as of Today. ",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "By Me, Yesterday, at 21:54",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                    );
                  },
                ),
              ),

              /// Activities section
              /// ....................
              Container(
                // margin: EdgeInsets.only(left: 16),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Activities",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFEFEFEFE),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  },
                    // ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(
                        //   context, '/profile',
                        //   // arguments: widget.usertype
                        // );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey[400],
                        ),
                        child: Center(
                          child: Text(
                            "33 more..",
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 55,
                margin: EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 320,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ali Madani successfully finished Profile page front end ",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Yesterday, at 21:54",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ]),
                    );
                  },
                ),
              ),

              /// Boards section
              /// ....................
              Container(
                // margin: EdgeInsets.only(left: 16),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Boards",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFEFEFEFE),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  },
                    // ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(
                            //   context, '/profile',
                            //   // arguments: widget.usertype
                            // );
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[400],
                            ),
                            child: Center(
                              child: Text(
                                "4 more..",
                                style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[800]),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                // enableDrag: true,
                                isDismissible: true,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                builder: (BuildContext bc) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 40),
                                    height: MediaQuery.of(context).size.height /
                                        2.5,
                                    child: Column(children: <Widget>[
                                      //modal title
                                      //
                                      //
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 8, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("New Board",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            IconButton(
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      //content
                                      //
                                      //
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    fillColor: Colors.grey[900],
                                                    filled: true,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15.0),
                                                            ),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey[900],
                                                                width: 1.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15.0),
                                                            ),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey[700],
                                                                width: 1.0)),
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 5.0,
                                                            horizontal: 10),
                                                    border: InputBorder.none,
                                                    hintText: 'Board name'),
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: TextField(
                                                maxLines: 5,
                                                decoration: InputDecoration(
                                                    fillColor: Colors.grey[900],
                                                    filled: true,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15.0),
                                                            ),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey[900],
                                                                width: 1.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15.0),
                                                            ),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey[700],
                                                                width: 1.0)),
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 5.0,
                                                            horizontal: 10),
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'Board description'),
                                              ),
                                            ),
                                            // Text(
                                            //   "*You can later edit task status, members, etc.. by clicking on the task",
                                            //   overflow: TextOverflow.ellipsis,
                                            //   maxLines: 2,
                                            //   style: TextStyle(
                                            //       fontSize: 10.0,
                                            //       fontWeight: FontWeight.w700,
                                            //       color: Colors.grey),
                                            // ),
                                          ],
                                        ),
                                      ),

                                      //actions
                                      //
                                      //
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 45,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: FlatButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    // color: Color(0xFEFEFEFE),
                                                    // textColor: Colors.blueAccent,
                                                    child: Text("Cancel",
                                                        style: TextStyle(
                                                          // color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(10.0),
                                                      // side: BorderSide(color: Colors.black),
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 150,
                                                child: FlatButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              // context,
                                                              '/login',
                                                              (Route<dynamic>
                                                                      route) =>
                                                                  false
                                                              // arguments: widget.usertype
                                                              );
                                                    },
                                                    color: Colors.blueAccent,
                                                    textColor: Colors.black,
                                                    child: Text("Add board",
                                                        style: TextStyle(
                                                          // color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(10.0),
                                                      // side: BorderSide(color: Colors.black),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  );
                                });
                          },
                        ),
                        // GestureDetector(
                        //   onTap: (){},

                        // )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 265,
                margin: EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 320,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context, '/boardDash',
                          // arguments: widget.usertype
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.symmetric(horizontal: 8),

                        // height: 100,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey[800],
                        ),

                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Front End Development",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Color(0xFEFEFEFE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 2,
                                        // ),
                                        Text(
                                          "Created by Me, at 01/4/2020",
                                          overflow: TextOverflow.ellipsis,
                                          // maxLines: 3,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.chat_bubble_outline_rounded,
                                          color: Colors.white,
                                          size: 20,
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
                                          size: 20,
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              // enableDrag: true,
                                              isDismissible: true,
                                              isScrollControlled: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              builder: (BuildContext bc) {
                                                return Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 40),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      4,
                                                  child:
                                                      Column(children: <Widget>[
                                                    //modal title
                                                    //
                                                    //
                                                    SizedBox(
                                                      // height: 15,
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 10,
                                                            bottom: 10),
                                                        height: 5,
                                                        width: 35,
                                                        // color: Colors.grey,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                      ),
                                                    ),

                                                    //
                                                    //
                                                    //
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 45,
                                                      child: FlatButton(
                                                        onPressed: () {},
                                                        // color: Colors.grey[900],
                                                        textColor: Colors.white,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .info_outline,
                                                              // color: Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text(
                                                                "Board details",
                                                                style:
                                                                    TextStyle(
                                                                  // color: Colors.white,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    //
                                                    //
                                                    //

                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 45,
                                                      child: FlatButton(
                                                        onPressed: () {},
                                                        // color: Colors.grey[900],
                                                        textColor: Colors.white,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .people_outline,
                                                              // color: Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text("Members",
                                                                style:
                                                                    TextStyle(
                                                                  // color: Colors.white,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    // SizedBox(
                                                    //   width:
                                                    //       MediaQuery.of(context)
                                                    //           .size
                                                    //           .width,
                                                    //   height: 45,
                                                    //   child: FlatButton(
                                                    //     onPressed: () {},
                                                    //     // color: Colors.grey[900],
                                                    //     textColor:
                                                    //         Colors.blueAccent,
                                                    //     child: Row(
                                                    //       children: [
                                                    //         Icon(
                                                    //           Icons
                                                    //               .post_add_outlined,
                                                    //           color: Colors
                                                    //               .blueAccent,
                                                    //         ),
                                                    //         SizedBox(
                                                    //           width: 20,
                                                    //         ),
                                                    //         Text(
                                                    //             "Post project to Community",
                                                    //             style: TextStyle(
                                                    //               // color: Colors.white,
                                                    //               fontSize: 15,
                                                    //               fontWeight:
                                                    //                   FontWeight
                                                    //                       .w500,
                                                    //             )),
                                                    //       ],
                                                    //     ),
                                                    //   ),
                                                    // ),

                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 45,
                                                      child: FlatButton(
                                                        onPressed: () {},
                                                        // color: Colors.grey[900],
                                                        textColor:
                                                            Colors.redAccent,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .delete_outline,
                                                              color: Colors
                                                                  .redAccent,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text("Delete board",
                                                                style:
                                                                    TextStyle(
                                                                  // color: Colors.white,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                );
                                              });
                                        },
                                      ),
                                    ],
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 90, // 83
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  // border: Border.all(
                                  //   color: Colors.grey, //                   <--- border color
                                  //   width: 1,
                                  // ),
                                  color: Color(0xFF313131)),
                              child: Column(
                                children: [
                                  Text(
                                    "Progress",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    // width: 350,
                                    margin: EdgeInsets.symmetric(
                                      vertical: 6,
                                    ),
                                    child: LinearPercentIndicator(
                                      //leaner progress bar
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 14.0,
                                      percent: percent / 100,
                                      center: Text(
                                        percent.toString() + "%",
                                        style: TextStyle(
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: Colors.white60,
                                      backgroundColor: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // Text(
                                  //   percent.toString() + "%",
                                  //   style: TextStyle(
                                  //       fontSize: 8.0,
                                  //       fontWeight: FontWeight.w600,
                                  //       color: Colors.grey
                                  //   ),
                                  // ),
                                  Container(
                                    // width: 200,
                                    margin: EdgeInsets.symmetric(
                                      vertical: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.green,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4 -
                                              64,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "20 Finished Tasks",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.red,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3 -
                                              64,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "15 Pending Tasks",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.orange,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3 -
                                              64,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "15 Ongoing Tasks",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Activities",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                textDirection: TextDirection.rtl,
                                fit: StackFit.loose,
                                overflow: Overflow.visible,
                                // clipBehavior: Clip.,
                                children: [
                                  Positioned(
                                    top: 10.0,
                                    // bottom: 0.0,
                                    child: Container(
                                      width: 260,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xFF353535),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // top: 10.0,
                                    // right: 0.0,
                                    // bottom: 15,
                                    child: Container(
                                      width: 320,
                                      height: 60,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xFF313131),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ali Madani successfully finished Profile page front end",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[400]),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Yesterday, at 21:54",
                                            style: TextStyle(
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey[400]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -10.0,
                                    right: 0.0,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.grey[400],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "33 more..",
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
