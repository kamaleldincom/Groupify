import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BoardDash extends StatefulWidget {
  @override
  _BoardDashState createState() => _BoardDashState();
}

class _BoardDashState extends State<BoardDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project: Application Development Project',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              // textAlign: TextAlign.center,
              style: TextStyle(
                // color: Color(0xFEFEFEFE),
                fontSize: 9,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Front End Development',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          // IconButton(
          //   icon: Icon(
          //     Icons.add,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
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
                      height: MediaQuery.of(context).size.height / 4,
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
                                Text("Board details",
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
                                Text("Delete board",
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
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /// "All Tasks" and filters
            /// .......................
            Container(
              // margin: EdgeInsets.only(left: 16),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Tasks",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFEFEFEFE),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.sort,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// "Finished Tasks"
            /// .......................
            Container(
              // margin: EdgeInsets.only(left: 16),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Finished",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFEFEFEFE),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
                  return GestureDetector(
                    onTap: () {
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
                              height: MediaQuery.of(context).size.height / 1.5,
                              child: Column(children: <Widget>[
                                //modal title
                                //
                                //

                                SizedBox(
                                  // height: 15,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    height: 5,
                                    width: 35,
                                    // color: Colors.grey,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),

                                //content
                                //
                                //
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(15.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[900],
                                                      width: 1.0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(15.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[700],
                                                      width: 1.0)),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5.0,
                                                      horizontal: 10),
                                              border: InputBorder.none,
                                              hintText:
                                                  'Profile page front end'),
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
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(15.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[900],
                                                      width: 1.0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(15.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[700],
                                                      width: 1.0)),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5.0,
                                                      horizontal: 10),
                                              border: InputBorder.none,
                                              hintText:
                                                  'Profile page front end Profile page front end Profile page front end Profile page front end'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Members",
                                              // overflow: TextOverflow.ellipsis,
                                              // maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 40,
                                              // margin:
                                              //     EdgeInsets.only(bottom: 15),
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                // itemExtent: 150,
                                                shrinkWrap: true,
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 2),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            // width: 80,
                                                            child: Text(
                                                              "Loai Al-Sharee",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: IconButton(
                                                              icon: Icon(
                                                                Icons.close,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              onPressed: () {},
                                                            ),
                                                          ),
                                                        ]),
                                                  );
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              height: 40,
                                              // margin:
                                              //     EdgeInsets.only(bottom: 15),
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                // itemExtent: 150,
                                                shrinkWrap: true,
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 2),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      color: Colors.grey[800],
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            // width: 80,
                                                            child: Text(
                                                              "Abdulrahman Al-Abidi",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFEFEFEFE),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: IconButton(
                                                              icon: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              onPressed: () {},
                                                            ),
                                                          ),
                                                        ]),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                                                    fontWeight: FontWeight.w600,
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
                                              child: Text("Save changes",
                                                  style: TextStyle(
                                                    // color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
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
                    child: Container(
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
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Profile page front end",
                                          overflow: TextOverflow.ellipsis,
                                          // maxLines: 2,
                                          style: TextStyle(
                                            color: Color(0xFFFEFEFE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Profile page front end Profile page front end Profile page front end Profile page front end",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Last updated, Yesterday, at 21:54",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   height: 40,
                                  //   width: 30,
                                  //   child: IconButton(
                                  //     icon: Icon(
                                  //       Icons.more_vert,
                                  //       color: Colors.white,
                                  //     ),
                                  //     onPressed: () {},
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.green,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "Finished ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.white,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "On Time ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Text(
                                      "AK",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    radius: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  );
                },
              ),
            ),

            /// "Ongoing Tasks"
            /// .......................
            Container(
              // margin: EdgeInsets.only(left: 16),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ongoing",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFEFEFEFE),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: Container(
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
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dashboard bars, and posts",
                                          overflow: TextOverflow.ellipsis,
                                          // maxLines: 2,
                                          style: TextStyle(
                                            color: Color(0xFFFEFEFE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Profile page front end Profile page front end Profile page front end Profile page front end",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Last updated, Yesterday, at 21:54",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   height: 40,
                                  //   width: 30,
                                  //   child: IconButton(
                                  //     icon: Icon(
                                  //       Icons.more_vert,
                                  //       color: Colors.white,
                                  //     ),
                                  //     onPressed: () {},
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.orange,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "Ongoing ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.white,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "On Time ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Text(
                                      "AK",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    radius: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  );
                },
              ),
            ),

            /// "Stopped Tasks"
            /// .......................
            Container(
              // margin: EdgeInsets.only(left: 16),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFEFEFEFE),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/members'); // change path
                    },
                    child: Container(
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
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Maps stack page",
                                          overflow: TextOverflow.ellipsis,
                                          // maxLines: 2,
                                          style: TextStyle(
                                            color: Color(0xFFFEFEFE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Profile page front end Profile page front end Profile page front end Profile page front end",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Last updated, Yesterday, at 21:54",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   height: 40,
                                  //   width: 30,
                                  //   child: IconButton(
                                  //     icon: Icon(
                                  //       Icons.more_vert,
                                  //       color: Colors.white,
                                  //     ),
                                  //     onPressed: () {},
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.red,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "Pending ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.grey,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 70,

                                          /// missing algo
                                          height: 14,
                                          child: Center(
                                            child: Text(
                                              "Delayed ",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Text(
                                      "AK",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    radius: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 35,
        child: FloatingActionButton.extended(
          label: Text(
            "Add a new task",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: Icon(
            Icons.add,
            size: 18,
          ),
          backgroundColor: Color(0xFEFEFEFE),
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
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(children: <Widget>[
                      //modal title
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("New Task",
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
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: Colors.grey[900],
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[900],
                                            width: 1.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[700],
                                            width: 1.0)),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Title'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                    fillColor: Colors.grey[900],
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[900],
                                            width: 1.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[700],
                                            width: 1.0)),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Description (optional)'),
                              ),
                            ),
                            Text(
                              "*You can later edit task status, members, etc.. by clicking on the task",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),

                      //actions
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          fontWeight: FontWeight.w600,
                                        )),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
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
                                              (Route<dynamic> route) => false
                                              // arguments: widget.usertype
                                              );
                                    },
                                    color: Colors.blueAccent,
                                    textColor: Colors.black,
                                    child: Text("Add task",
                                        style: TextStyle(
                                          // color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
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
      ),
    );
  }
}
