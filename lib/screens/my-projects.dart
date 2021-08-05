import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:groupify/models/Project.dart';
import 'package:groupify/models/User.dart';
import 'package:groupify/screens/widgets/circleProgress.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  final TextEditingController projectNameController = TextEditingController();
  final TextEditingController projectDescController = TextEditingController();

  /// Progress bar , back
  /// ...................
  double percent = 0.0;

  String dropdownvalue = 'Choose the project';
  var items = [
    'Choose the project',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  double _height;
  double _width;

  @override
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 100), (_) {
      setState(() {
        percent += 10;
        if (percent >= 40) {
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User u = Provider.of<User>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('My Projects'),
        actions: [
          /// Add project module
          ///
          ///
          IconButton(
            /// add icon
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
                    return Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 60),
                          // height: MediaQuery.of(context).viewInsets.bottom,
                          child: Column(children: <Widget>[
                            //modal title
                            //
                            //
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 8, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Project",
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
                                      controller: projectNameController,
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
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 5.0,
                                                  horizontal: 10),
                                          border: InputBorder.none,
                                          hintText: 'Project title'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: TextField(
                                      controller: projectDescController,
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
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 5.0,
                                                  horizontal: 10),
                                          border: InputBorder.none,
                                          hintText: 'Project description'),
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
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                                                new BorderRadius.circular(10.0),
                                            // side: BorderSide(color: Colors.black),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 150,

                                      /// Add new project ViewModel
                                      ///
                                      child: FlatButton(
                                          onPressed: () async {
                                            if (projectNameController.text
                                                    .trim()
                                                    .isNotEmpty &&
                                                projectDescController.text
                                                    .trim()
                                                    .isNotEmpty) {
                                              customProgressIdicator(context);
                                              // get the current user id

                                              // get owner name and id from users from firestore
                                              DocumentSnapshot doc =
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('users')
                                                      .doc(u.id)
                                                      .get();
                                              // map from doc snap to User
                                              u = User.fromMap(doc);

                                              // make object project

                                              Project project;
                                              project = Project(
                                                pName: projectNameController
                                                    .text
                                                    .trim(),
                                                pDesc: projectDescController
                                                    .text
                                                    .trim(),
                                                ownerId: u.id,
                                                ownerName: u.name,
                                                createdAt:
                                                    DateTime.now().toString(),
                                              );
                                              // set to firestore
                                              DocumentReference docRef =
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('projects')
                                                      .doc();

                                              project.id = docRef.id;

                                              docRef.set(project.toMap());
                                              projectDescController.clear();
                                              projectNameController.clear();
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                              setState((){});
                                            }
                                          },
                                          color: Colors.blueAccent,
                                          textColor: Colors.black,
                                          child: Text("Add Project",
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
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection('projects')
              .where('ownerId', isEqualTo: u.id)
              .orderBy('createdAt')
              .get(),
          builder: (context, snapshot) {
            // projects.forEach((element) {
            //   print(element.toString());
            // });

            if (snapshot.hasData) {
              QuerySnapshot query = snapshot.data;
              List<Project> projects =
                  query.docs.map((doc) => Project.fromMap(doc)).toList();

              return Column(children: <Widget>[
                // ////
                // scroll list builder

                Expanded(
                  child: ListView.builder(
                    // padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    scrollDirection: Axis.vertical,
                    // itemExtent: 100.0,
                    shrinkWrap: true,
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        // margin: EdgeInsets.only(bottom: 10),
                        child: Column(children: <Widget>[
                          /// Project header
                          /// ...........

                          Container(
                            height: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Project details model
                                ///
                                ///
                                GestureDetector(
                                  onTap: () {
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
                                          return Wrap(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 60),
                                                // height:
                                                //     MediaQuery.of(context).size.height / 1.3,
                                                child: Column(
                                                    children: <Widget>[
                                                      //modal title
                                                      //
                                                      //

                                                      SizedBox(
                                                        // height: 15,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
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
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ),

                                                      //content
                                                      //
                                                      //

                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 15, 0),
                                                        child: Column(
                                                          children: [
                                                            Center(
                                                              child:
                                                                  CircleAvatar(
                                                                backgroundColor:
                                                                    Colors.grey,
                                                                child:
                                                                    Text("AD"),
                                                                radius: 40,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      15.0),
                                                              child: Column(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "Change profile picture",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .blueAccent,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                      "Created by " +
                                                                          projects[index]
                                                                              .ownerName,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      ", at " +
                                                                          projects[index]
                                                                              .createdAt
                                                                              .split(' ')[0],
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                              ),
                                                              child: TextField(
                                                                controller:
                                              projectNameController,
                                                                decoration:
                                                                    InputDecoration(
                                                                  fillColor:
                                                                      Colors.grey[
                                                                          900],
                                                                  filled: true,
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                          borderRadius: BorderRadius
                                                                              .all(
                                                                            Radius.circular(15.0),
                                                                          ),
                                                                          borderSide: BorderSide(
                                                                              color: Colors.grey[900],
                                                                              width: 1.0)),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                          borderRadius: BorderRadius
                                                                              .all(
                                                                            Radius.circular(15.0),
                                                                          ),
                                                                          borderSide: BorderSide(
                                                                              color: Colors.grey[700],
                                                                              width: 1.0)),
                                                                  contentPadding: const EdgeInsets
                                                                          .symmetric(
                                                                      vertical:
                                                                          5.0,
                                                                      horizontal:
                                                                          10),
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText: projects[
                                                                          index]
                                                                      .pName,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // margin: EdgeInsets.only(bottom: 10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                              ),
                                                              child: TextField(
                                                                  controller: projectDescController,
                                                                maxLines: 5,
                                                                decoration: InputDecoration(
                                                                    fillColor: Colors.grey[900],
                                                                    filled: true,
                                                                    enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0),
                                                                        ),
                                                                        borderSide: BorderSide(color: Colors.grey[900], width: 1.0)),
                                                                    focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0),
                                                                        ),
                                                                        borderSide: BorderSide(color: Colors.grey[700], width: 1.0)),
                                                                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                                                    border: InputBorder.none,
                                                                    hintText: projects[index].pDesc),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      0,
                                                                      15,
                                                                      0,
                                                                      0),
                                                              child: SizedBox(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: 45,
                                                                child:
                                                                    FlatButton(
                                                                        onPressed:
                                                                            () {
                                                                          // AuthService
                                                                          //     auth =
                                                                          //     AuthService();
                                                                          // auth.signOut();
                                                                          // Navigator.pop(
                                                                          //     context);
                                                                          Navigator
                                                                              .pushNamed(
                                                                            context,
                                                                            '/members',
                                                                            // arguments: widget.usertype
                                                                          );
                                                                        },
                                                                        color: Colors.grey[
                                                                            800],
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.group,
                                                                              // size: 12.0,
                                                                              // color: Colors.blueAccent,
                                                                            ),
                                                                            SizedBox(
                                                                              width: 15,
                                                                            ),
                                                                            Text("Members",
                                                                                style: TextStyle(
                                                                                  // color: Colors.white,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w600,
                                                                                )),
                                                                          ],
                                                                        ),
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              new BorderRadius.circular(15.0),
                                                                          // side: BorderSide(color: Colors.black),
                                                                        )),
                                                              ),
                                                            ),

                                                            // Container(
                                                            //   margin: EdgeInsets
                                                            //       .only(
                                                            //           top: 15),
                                                            //   child: Column(
                                                            //     mainAxisAlignment:
                                                            //         MainAxisAlignment
                                                            //             .start,
                                                            //     crossAxisAlignment:
                                                            //         CrossAxisAlignment
                                                            //             .start,
                                                            //     children: [
                                                            //       Text(
                                                            //         "Members",
                                                            //         // overflow: TextOverflow.ellipsis,
                                                            //         // maxLines: 2,
                                                            //         style: TextStyle(
                                                            //             fontSize:
                                                            //                 12.0,
                                                            //             fontWeight:
                                                            //                 FontWeight
                                                            //                     .w700,
                                                            //             color: Colors
                                                            //                 .grey),
                                                            //       ),
                                                            //       SizedBox(
                                                            //         height: 10,
                                                            //       ),
                                                            //       Container(
                                                            //         height: 40,
                                                            //         // margin:
                                                            //         //     EdgeInsets.only(bottom: 15),
                                                            //         child: ListView
                                                            //             .builder(
                                                            //           scrollDirection:
                                                            //               Axis.horizontal,
                                                            //           // itemExtent: 150,
                                                            //           shrinkWrap:
                                                            //               true,
                                                            //           itemCount:
                                                            //               6,
                                                            //           itemBuilder:
                                                            //               (context,
                                                            //                   index) {
                                                            //             return Container(
                                                            //               margin:
                                                            //                   EdgeInsets.only(right: 15),
                                                            //               padding: EdgeInsets.symmetric(
                                                            //                   horizontal: 8,
                                                            //                   vertical: 2),
                                                            //               decoration:
                                                            //                   BoxDecoration(
                                                            //                 borderRadius:
                                                            //                     BorderRadius.all(Radius.circular(10)),
                                                            //                 color:
                                                            //                     Colors.white,
                                                            //               ),
                                                            //               child: Row(
                                                            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            //                   crossAxisAlignment: CrossAxisAlignment.center,
                                                            //                   children: [
                                                            //                     SizedBox(
                                                            //                       // width: 80,
                                                            //                       child: Text(
                                                            //                         "Loai Al-Sharee",
                                                            //                         overflow: TextOverflow.ellipsis,
                                                            //                         maxLines: 2,
                                                            //                         style: TextStyle(
                                                            //                           color: Colors.black,
                                                            //                           fontSize: 12,
                                                            //                           fontWeight: FontWeight.w400,
                                                            //                         ),
                                                            //                       ),
                                                            //                     ),
                                                            //                     SizedBox(
                                                            //                       width: 30,
                                                            //                       child: IconButton(
                                                            //                         icon: Icon(
                                                            //                           Icons.close,
                                                            //                           color: Colors.black,
                                                            //                         ),
                                                            //                         onPressed: () {},
                                                            //                       ),
                                                            //                     ),
                                                            //                   ]),
                                                            //             );
                                                            //           },
                                                            //         ),
                                                            //       ),
                                                            //       SizedBox(
                                                            //         height: 15,
                                                            //       ),
                                                            //       Container(
                                                            //         height: 40,
                                                            //         // margin:
                                                            //         //     EdgeInsets.only(bottom: 15),
                                                            //         child: ListView
                                                            //             .builder(
                                                            //           scrollDirection:
                                                            //               Axis.horizontal,
                                                            //           // itemExtent: 150,
                                                            //           shrinkWrap:
                                                            //               true,
                                                            //           itemCount:
                                                            //               6,
                                                            //           itemBuilder:
                                                            //               (context,
                                                            //                   index) {
                                                            //             return Container(
                                                            //               margin:
                                                            //                   EdgeInsets.only(right: 15),
                                                            //               padding: EdgeInsets.symmetric(
                                                            //                   horizontal: 8,
                                                            //                   vertical: 2),
                                                            //               decoration:
                                                            //                   BoxDecoration(
                                                            //                 borderRadius:
                                                            //                     BorderRadius.all(Radius.circular(10)),
                                                            //                 color:
                                                            //                     Colors.grey[800],
                                                            //               ),
                                                            //               child: Row(
                                                            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            //                   crossAxisAlignment: CrossAxisAlignment.center,
                                                            //                   children: [
                                                            //                     SizedBox(
                                                            //                       // width: 80,
                                                            //                       child: Text(
                                                            //                         "Abdulrahman Al-Abidi",
                                                            //                         overflow: TextOverflow.ellipsis,
                                                            //                         maxLines: 2,
                                                            //                         style: TextStyle(
                                                            //                           color: Color(0xFEFEFEFE),
                                                            //                           fontSize: 12,
                                                            //                           fontWeight: FontWeight.w400,
                                                            //                         ),
                                                            //                       ),
                                                            //                     ),
                                                            //                     SizedBox(
                                                            //                       width: 30,
                                                            //                       child: IconButton(
                                                            //                         icon: Icon(
                                                            //                           Icons.add,
                                                            //                           color: Colors.white,
                                                            //                         ),
                                                            //                         onPressed: () {},
                                                            //                       ),
                                                            //                     ),
                                                            //                   ]),
                                                            //             );
                                                            //           },
                                                            //         ),
                                                            //       ),
                                                            //     ],
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                      ),

                                                      //actions
                                                      //
                                                      //
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 15, 15, 0),
                                                        child: SizedBox(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          height: 45,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                width: 150,
                                                                child: FlatButton(
                                                                    onPressed: () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                    // color: Color(0xFEFEFEFE),
                                                                    // textColor: Colors.blueAccent,
                                                                    child: Text("Cancel",
                                                                        style: TextStyle(
                                                                          // color: Colors.white,
                                                                          fontSize:
                                                                              15,
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
                                                                    onPressed: () async  {   
                                                                      if                                                             
                                                (projectNameController.text
                                                    .trim()
                                                    .isNotEmpty &&
                                                projectDescController.text
                                                    .trim()
                                                    .isNotEmpty) {
                                              customProgressIdicator(context);
                                              // get the current user id

                                              // get owner name and id from users from firestore
                                              DocumentSnapshot doc =
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('users')
                                                      .doc(u.id)
                                                      .get();
                                              // map from doc snap to User
                                              u = User.fromMap(doc);

                                              // make object project

                                              // Project project;
                                              // project = Project(
                                              //   pName: projectNameController
                                              //       .text
                                              //       .trim(),
                                              //   pDesc: projectDescController
                                              //       .text
                                              //       .trim(),
                                              //   ownerId: u.id,
                                              //   ownerName: u.name,
                                              //   createdAt:
                                              //       DateTime.now().toString(),
                                              // );
                                              // set to firestore
                                              DocumentReference docRef =
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('projects')
                                                      .doc(projects[index].id);

                                              // project.id = docRef.id;

                                              docRef.update({
                                                "pName":projectNameController.text.trim(),
                                                "pDesc":projectDescController.text.trim(),
                                              });
                                              projectDescController.clear();
                                              projectNameController.clear();
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                              setState((){});
                                                    }
                                                                  
                                                                    },
                                                                    color: Colors.blueAccent,
                                                                    textColor: Colors.black,
                                                                    child: Text("Save changes",
                                                                        style: TextStyle(
                                                                          // color: Colors.white,
                                                                          fontSize:
                                                                              15,
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
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[800],
                                        child: Text("AD"),
                                        radius: 18.0,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 160,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              projects[index].pName,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Color(0xFEFEFEFE),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Created by " +
                                                      projects[index].ownerName,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.white54,
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    ", at " +
                                                        projects[index]
                                                            .createdAt
                                                            .split(' ')[0],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context, '/members',
                                            // arguments: widget.usertype
                                          );
                                        },
                                        child: Container(
                                          width: 78,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            border: Border.all(
                                              color: Colors
                                                  .blueAccent, //                   <--- border color
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.group,
                                                  size: 12.0,
                                                  color: Colors.blueAccent,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                SizedBox(
                                                  width: 45,
                                                  child: Text(
                                                    "4 Members", //change with backend later
                                                    overflow: TextOverflow
                                                        .ellipsis, // .......................
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                  context: context,
                                                  // enableDrag: true,
                                                  isDismissible: true,
                                                  isScrollControlled: true,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                  builder: (BuildContext bc) {
                                                    return Wrap(
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 60),
                                                          // height: MediaQuery.of(context)
                                                          //         .size
                                                          //         .height /
                                                          //     3,
                                                          child: Column(
                                                              children: <
                                                                  Widget>[
                                                                //modal title
                                                                //
                                                                //
                                                                SizedBox(
                                                                  // height: 15,
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets.only(
                                                                        top: 10,
                                                                        bottom:
                                                                            10),
                                                                    height: 5,
                                                                    width: 35,
                                                                    // color: Colors.grey,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .grey,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                    ),
                                                                  ),
                                                                ),

                                                                //
                                                                //
                                                                //
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 45,
                                                                  child:
                                                                      FlatButton(
                                                                    onPressed:
                                                                        () {
                                                                      showModalBottomSheet(
                                                                          context:
                                                                              context,
                                                                          // enableDrag: true,
                                                                          isDismissible:
                                                                              true,
                                                                          isScrollControlled:
                                                                              true,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.0),
                                                                          ),
                                                                          builder:
                                                                              (BuildContext bc) {
                                                                            return Wrap(
                                                                              children: [
                                                                                Container(
                                                                                  margin: EdgeInsets.only(bottom: 60),
                                                                                  // height:
                                                                                  //     MediaQuery.of(context).size.height / 1.3,
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

                                                                                    //content
                                                                                    //
                                                                                    //

                                                                                    Padding(
                                                                                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                                                                      child: Column(
                                                                                        children: [
                                                                                          Center(
                                                                                            child: CircleAvatar(
                                                                                              backgroundColor: Colors.grey,
                                                                                              child: Text("AD"),
                                                                                              radius: 40,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(15.0),
                                                                                            child: Column(children: <Widget>[
                                                                                              Text(
                                                                                                "Change profile picture",
                                                                                                style: TextStyle(
                                                                                                  color: Colors.blueAccent,
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.w400,
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(height: 10),
                                                                                              Text(
                                                                                                "Created by " + projects[index].ownerName,
                                                                                                style: TextStyle(
                                                                                                  color: Colors.grey,
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.w400,
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                ", at " + projects[index].createdAt.split(' ')[0],
                                                                                                style: TextStyle(
                                                                                                  color: Colors.grey,
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.w400,
                                                                                                ),
                                                                                              ),
                                                                                            ]),
                                                                                          ),
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
                                                                                                    borderSide: BorderSide(color: Colors.grey[900], width: 1.0)),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                    borderRadius: BorderRadius.all(
                                                                                                      Radius.circular(15.0),
                                                                                                    ),
                                                                                                    borderSide: BorderSide(color: Colors.grey[700], width: 1.0)),
                                                                                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                                                                                border: InputBorder.none,
                                                                                                hintText: projects[index].pName,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            // margin: EdgeInsets.only(bottom: 10),
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
                                                                                                      borderSide: BorderSide(color: Colors.grey[900], width: 1.0)),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                      borderRadius: BorderRadius.all(
                                                                                                        Radius.circular(15.0),
                                                                                                      ),
                                                                                                      borderSide: BorderSide(color: Colors.grey[700], width: 1.0)),
                                                                                                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                                                                                  border: InputBorder.none,
                                                                                                  hintText: projects[index].pDesc),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                                                            child: SizedBox(
                                                                                              width: MediaQuery.of(context).size.width,
                                                                                              height: 45,
                                                                                              child: FlatButton(
                                                                                                  onPressed: () {
                                                                                                    // AuthService
                                                                                                    //     auth =
                                                                                                    //     AuthService();
                                                                                                    // auth.signOut();
                                                                                                    // Navigator.pop(
                                                                                                    //     context);
                                                                                                    Navigator.pushNamed(
                                                                                                      context,
                                                                                                      '/members',
                                                                                                      // arguments: widget.usertype
                                                                                                    );
                                                                                                  },
                                                                                                  color: Colors.grey[800],
                                                                                                  textColor: Colors.white,
                                                                                                  child: Row(
                                                                                                    children: [
                                                                                                      Icon(
                                                                                                        Icons.group,
                                                                                                        // size: 12.0,
                                                                                                        // color: Colors.blueAccent,
                                                                                                      ),
                                                                                                      SizedBox(
                                                                                                        width: 15,
                                                                                                      ),
                                                                                                      Text("Members",
                                                                                                          style: TextStyle(
                                                                                                            // color: Colors.white,
                                                                                                            fontSize: 15,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                          )),
                                                                                                    ],
                                                                                                  ),
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: new BorderRadius.circular(15.0),
                                                                                                    // side: BorderSide(color: Colors.black),
                                                                                                  )),
                                                                                            ),
                                                                                          ),

                                                                                          // Container(
                                                                                          //   margin: EdgeInsets
                                                                                          //       .only(
                                                                                          //           top: 15),
                                                                                          //   child: Column(
                                                                                          //     mainAxisAlignment:
                                                                                          //         MainAxisAlignment
                                                                                          //             .start,
                                                                                          //     crossAxisAlignment:
                                                                                          //         CrossAxisAlignment
                                                                                          //             .start,
                                                                                          //     children: [
                                                                                          //       Text(
                                                                                          //         "Members",
                                                                                          //         // overflow: TextOverflow.ellipsis,
                                                                                          //         // maxLines: 2,
                                                                                          //         style: TextStyle(
                                                                                          //             fontSize:
                                                                                          //                 12.0,
                                                                                          //             fontWeight:
                                                                                          //                 FontWeight
                                                                                          //                     .w700,
                                                                                          //             color: Colors
                                                                                          //                 .grey),
                                                                                          //       ),
                                                                                          //       SizedBox(
                                                                                          //         height: 10,
                                                                                          //       ),
                                                                                          //       Container(
                                                                                          //         height: 40,
                                                                                          //         // margin:
                                                                                          //         //     EdgeInsets.only(bottom: 15),
                                                                                          //         child: ListView
                                                                                          //             .builder(
                                                                                          //           scrollDirection:
                                                                                          //               Axis.horizontal,
                                                                                          //           // itemExtent: 150,
                                                                                          //           shrinkWrap:
                                                                                          //               true,
                                                                                          //           itemCount:
                                                                                          //               6,
                                                                                          //           itemBuilder:
                                                                                          //               (context,
                                                                                          //                   index) {
                                                                                          //             return Container(
                                                                                          //               margin:
                                                                                          //                   EdgeInsets.only(right: 15),
                                                                                          //               padding: EdgeInsets.symmetric(
                                                                                          //                   horizontal: 8,
                                                                                          //                   vertical: 2),
                                                                                          //               decoration:
                                                                                          //                   BoxDecoration(
                                                                                          //                 borderRadius:
                                                                                          //                     BorderRadius.all(Radius.circular(10)),
                                                                                          //                 color:
                                                                                          //                     Colors.white,
                                                                                          //               ),
                                                                                          //               child: Row(
                                                                                          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          //                   crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          //                   children: [
                                                                                          //                     SizedBox(
                                                                                          //                       // width: 80,
                                                                                          //                       child: Text(
                                                                                          //                         "Loai Al-Sharee",
                                                                                          //                         overflow: TextOverflow.ellipsis,
                                                                                          //                         maxLines: 2,
                                                                                          //                         style: TextStyle(
                                                                                          //                           color: Colors.black,
                                                                                          //                           fontSize: 12,
                                                                                          //                           fontWeight: FontWeight.w400,
                                                                                          //                         ),
                                                                                          //                       ),
                                                                                          //                     ),
                                                                                          //                     SizedBox(
                                                                                          //                       width: 30,
                                                                                          //                       child: IconButton(
                                                                                          //                         icon: Icon(
                                                                                          //                           Icons.close,
                                                                                          //                           color: Colors.black,
                                                                                          //                         ),
                                                                                          //                         onPressed: () {},
                                                                                          //                       ),
                                                                                          //                     ),
                                                                                          //                   ]),
                                                                                          //             );
                                                                                          //           },
                                                                                          //         ),
                                                                                          //       ),
                                                                                          //       SizedBox(
                                                                                          //         height: 15,
                                                                                          //       ),
                                                                                          //       Container(
                                                                                          //         height: 40,
                                                                                          //         // margin:
                                                                                          //         //     EdgeInsets.only(bottom: 15),
                                                                                          //         child: ListView
                                                                                          //             .builder(
                                                                                          //           scrollDirection:
                                                                                          //               Axis.horizontal,
                                                                                          //           // itemExtent: 150,
                                                                                          //           shrinkWrap:
                                                                                          //               true,
                                                                                          //           itemCount:
                                                                                          //               6,
                                                                                          //           itemBuilder:
                                                                                          //               (context,
                                                                                          //                   index) {
                                                                                          //             return Container(
                                                                                          //               margin:
                                                                                          //                   EdgeInsets.only(right: 15),
                                                                                          //               padding: EdgeInsets.symmetric(
                                                                                          //                   horizontal: 8,
                                                                                          //                   vertical: 2),
                                                                                          //               decoration:
                                                                                          //                   BoxDecoration(
                                                                                          //                 borderRadius:
                                                                                          //                     BorderRadius.all(Radius.circular(10)),
                                                                                          //                 color:
                                                                                          //                     Colors.grey[800],
                                                                                          //               ),
                                                                                          //               child: Row(
                                                                                          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          //                   crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          //                   children: [
                                                                                          //                     SizedBox(
                                                                                          //                       // width: 80,
                                                                                          //                       child: Text(
                                                                                          //                         "Abdulrahman Al-Abidi",
                                                                                          //                         overflow: TextOverflow.ellipsis,
                                                                                          //                         maxLines: 2,
                                                                                          //                         style: TextStyle(
                                                                                          //                           color: Color(0xFEFEFEFE),
                                                                                          //                           fontSize: 12,
                                                                                          //                           fontWeight: FontWeight.w400,
                                                                                          //                         ),
                                                                                          //                       ),
                                                                                          //                     ),
                                                                                          //                     SizedBox(
                                                                                          //                       width: 30,
                                                                                          //                       child: IconButton(
                                                                                          //                         icon: Icon(
                                                                                          //                           Icons.add,
                                                                                          //                           color: Colors.white,
                                                                                          //                         ),
                                                                                          //                         onPressed: () {},
                                                                                          //                       ),
                                                                                          //                     ),
                                                                                          //                   ]),
                                                                                          //             );
                                                                                          //           },
                                                                                          //         ),
                                                                                          //       ),
                                                                                          //     ],
                                                                                          //   ),
                                                                                          // ),
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
                                                                                                    borderRadius: new BorderRadius.circular(10.0),
                                                                                                    // side: BorderSide(color: Colors.black),
                                                                                                  )),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: 150,
                                                                                              child: FlatButton(
                                                                                                  onPressed: () {
                                                                                                    Navigator.of(context).pushNamedAndRemoveUntil(
                                                                                                        // context,
                                                                                                        '/login',
                                                                                                        (Route<dynamic> route) => false
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
                                                                                                    borderRadius: new BorderRadius.circular(10.0),
                                                                                                    // side: BorderSide(color: Colors.black),
                                                                                                  )),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ]),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          });
                                                                    },
                                                                    // color: Colors.grey[900],
                                                                    textColor:
                                                                        Colors
                                                                            .white,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .info_outline,
                                                                          // color: Colors.grey,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                            "Project details",
                                                                            style:
                                                                                TextStyle(
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
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 45,
                                                                  child:
                                                                      FlatButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator
                                                                          .pushNamed(
                                                                        context,
                                                                        '/members',
                                                                        // arguments: widget.usertype
                                                                      );
                                                                    },
                                                                    // color: Colors.grey[900],
                                                                    textColor:
                                                                        Colors
                                                                            .white,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .people_outline,
                                                                          // color: Colors.grey,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                            "Members",
                                                                            style:
                                                                                TextStyle(
                                                                              // color: Colors.white,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w500,
                                                                            )),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),

                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 45,
                                                                  child:
                                                                      FlatButton(
                                                                    onPressed:
                                                                        () {
                                                                      showModalBottomSheet(
                                                                          context:
                                                                              context,
                                                                          // enableDrag: true,
                                                                          isDismissible:
                                                                              true,
                                                                          isScrollControlled:
                                                                              true,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14.0),
                                                                          ),
                                                                          builder:
                                                                              (BuildContext bc) {
                                                                            return Wrap(
                                                                              children: [
                                                                                Container(
                                                                                  margin: EdgeInsets.only(bottom: 60),
                                                                                  // height: MediaQuery.of(context).size.height / 2.5,
                                                                                  child: Column(children: <Widget>[
                                                                                    //modal title
                                                                                    //
                                                                                    //
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.fromLTRB(20, 10, 8, 0),
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text("New Community post",
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
                                                                                            padding: EdgeInsets.symmetric(horizontal: 8),
                                                                                            width: MediaQuery.of(context).size.width,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.grey[800],
                                                                                              borderRadius: BorderRadius.circular(15),
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Text("Project",
                                                                                                    style: TextStyle(
                                                                                                      color: Colors.grey,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                    )),
                                                                                                SizedBox(
                                                                                                  width: MediaQuery.of(context).size.width / 3 * 2,
                                                                                                  child: DropdownButtonHideUnderline(
                                                                                                    child: DropdownButton(
                                                                                                      value: dropdownvalue,
                                                                                                      icon: Icon(Icons.keyboard_arrow_down),
                                                                                                      items: items.map((String items) {
                                                                                                        return DropdownMenuItem(value: items, child: Text(items));
                                                                                                      }).toList(),
                                                                                                      onChanged: (String newValue) {
                                                                                                        setState(() {
                                                                                                          dropdownvalue = newValue;
                                                                                                        });
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
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
                                                                                                      borderSide: BorderSide(color: Colors.grey[900], width: 1.0)),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                      borderRadius: BorderRadius.all(
                                                                                                        Radius.circular(15.0),
                                                                                                      ),
                                                                                                      borderSide: BorderSide(color: Colors.grey[700], width: 1.0)),
                                                                                                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                                                                                  border: InputBorder.none,
                                                                                                  hintText: 'Post details'),
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
                                                                                                    borderRadius: new BorderRadius.circular(10.0),
                                                                                                    // side: BorderSide(color: Colors.black),
                                                                                                  )),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: 150,
                                                                                              // width: MediaQuery.of(context).size.width,
                                                                                              child: FlatButton(
                                                                                                  onPressed: () {
                                                                                                    Navigator.of(context).pushNamedAndRemoveUntil(
                                                                                                        // context,
                                                                                                        '/login',
                                                                                                        (Route<dynamic> route) => false
                                                                                                        // arguments: widget.usertype
                                                                                                        );
                                                                                                  },
                                                                                                  color: Colors.blueAccent,
                                                                                                  textColor: Colors.black,
                                                                                                  child: Text("Post project",
                                                                                                      style: TextStyle(
                                                                                                        // color: Colors.white,
                                                                                                        fontSize: 15,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      )),
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: new BorderRadius.circular(10.0),
                                                                                                    // side: BorderSide(color: Colors.black),
                                                                                                  )),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ]),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          });
                                                                    },
                                                                    // color: Colors.grey[900],
                                                                    textColor:
                                                                        Colors
                                                                            .blueAccent,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .post_add_outlined,
                                                                          color:
                                                                              Colors.blueAccent,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                            "Post project to Community",
                                                                            style:
                                                                                TextStyle(
                                                                              // color: Colors.white,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w500,
                                                                            )),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),

                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 45,
                                                                  child:
                                                                      FlatButton(
                                                                    onPressed:
                                                                        () async {
                                                                          // DocumentReference docRef =
                                                                          customProgressIdicator(context);
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('projects')
                                                      .doc(projects[index].id).delete();


                                              // project.id = docRef.id;

                                              // docRef;
                                              // projectDescController.clear();
                                              // projectNameController.clear();
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                              setState((){});
                                                                        },
                                                                    // color: Colors.grey[900],
                                                                    textColor:
                                                                        Colors
                                                                            .redAccent,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delete_outline,
                                                                          color:
                                                                              Colors.redAccent,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        Text(
                                                                            "Delete project",
                                                                            style:
                                                                                TextStyle(
                                                                              // color: Colors.white,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w500,
                                                                            )),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]),
                                                        ),
                                                      ],
                                                    );
                                                  });
                                            },
                                            child: Icon(Icons.more_vert,
                                                color: Colors.white, size: 20)),
                                      ),
                                    ]),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/projectDash',
                                arguments: projects[index],
                              );
                            },
                            child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// Project discription
                                  /// ................
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      projects[index].pDesc,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  /// Project progress
                                  /// ................
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 90, // 83
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 6),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(
                                        color: Colors
                                            .grey, //                   <--- border color
                                        width: 1,
                                      ),
                                    ),
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
                                            linearStrokeCap:
                                                LinearStrokeCap.roundAll,
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  color: Colors.green,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.4 -
                                                    30,

                                                /// missing algo
                                                height: 14,
                                                child: Center(
                                                  child: Text(
                                                    "20 Finished Tasks",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  color: Colors.red,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.3 -
                                                    30,

                                                /// missing algo
                                                height: 14,
                                                child: Center(
                                                  child: Text(
                                                    "15 Pending Tasks",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  color: Colors.orange,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                width: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.3 -
                                                    30,

                                                /// missing algo
                                                height: 14,
                                                child: Center(
                                                  child: Text(
                                                    "15 Ongoing Tasks",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w700,
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

                                  Center(
                                    child: Container(
                                      // margin: EdgeInsets.only(bottom: 30),
                                      // padding: EdgeInsets.only(top:20, bottom: 10),
                                      width: 200,
                                      height: 35,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "See More",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFEFEFEFE)),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFEFEFEFE),
                                            size: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),

                          Divider(
                            height: 35,
                            thickness: 2,
                          )
                        ]),
                      );
                    },
                  ),
                )
              ]);
            } else if (snapshot.hasError) {
              print(snapshot.error.toString());
              return Container(
                  child: Center(child: Text(snapshot.error.toString())));
            } else {
              return Container(
                  child: Center(child: CircularProgressIndicator()));
            }
          }),
    );
  }

  //   Board board;

  // FirebaseFirestore.instance
  //             .collection('projects').doc(pid).collection('boards')
  //             set(board.toMap()),
}
