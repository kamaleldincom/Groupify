import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String dropdownvalue = 'Choose the project';
  var items = [
    'Choose the project',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Ahmed Kamal'),
        actions: [
          IconButton(
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 8, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Settings",
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

                        //T&C
                        //
                        //
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: RaisedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      // isScrollControlled: true,
                                      builder: (BuildContext bc) {
                                        return Container(
                                          // height: MediaQuery.of(context).size.height/2,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Text("Terms & Conditions",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      15, 15, 15, 0),
                                              child: Expanded(
                                                child: Text(
                                                    "These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns."),
                                              ),
                                            )
                                          ]),
                                        );
                                      });
                                },
                                color: Colors.grey[900],
                                textColor: Colors.blueAccent,
                                child: Text("Terms & Conditions",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.blueAccent),
                                )),
                          ),
                        ),

                        //Logout
                        //
                        //
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      // context,
                                      '/login',
                                      (Route<dynamic> route) => false
                                      // arguments: widget.usertype
                                      );
                                },
                                color: Colors.redAccent,
                                textColor: Colors.white,
                                child: Text("Log Out",
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  // side: BorderSide(color: Colors.black),
                                )),
                          ),
                        ),
                      ]),
                    );
                  });
            },
            icon: Icon(
              Icons.menu,
              // color: Colors.white,
            ),
          )
        ],

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
      body: Column(children: <Widget>[
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text("AK"),
            radius: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            // Text(
            //   "ahmed@kamaleldin.com",
            //   style: TextStyle(
            //     color: Colors.grey,
            //     fontSize: 12,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            // SizedBox(height: 10),
            Text(
              "Change profile picture",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, bottom: 10),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Community Posts",
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 8, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[800],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text("Project",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3 *
                                                  2,
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton(
                                                  value: dropdownvalue,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items:
                                                      items.map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items));
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
                                          // width: MediaQuery.of(context).size.width,
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
                                              child: Text("Post project",
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
                            ),
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              // itemExtent: 100.0,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.only(bottom: 35),

                  ///
                  ///
                  child: Column(
                    children: [
                      /// post header
                      ///
                      Container(
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context, '/profile', // change later /
                                      // arguments: widget.usertype
                                    );
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Text("AK"),
                                    radius: 18.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SizedBox(
                                  width: 160,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ahmed Kamal Eldin",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFEFEFEFE),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "4:20 AM, 20/4/2020",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 78,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
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
                                            Icons.question_answer_outlined,
                                            size: 12.0,
                                            color: Colors.blueAccent,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          SizedBox(
                                            width: 45,
                                            child: Text(
                                              "Contact", //change with backend later
                                              overflow: TextOverflow
                                                  .ellipsis, // .......................
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context, '/profile',
                                            // arguments: widget.usertype
                                          );
                                        },
                                        child: Icon(Icons.more_vert,
                                            color: Colors.white, size: 20)),
                                  ),
                                ]),
                          ],
                        ),
                      ),

                      /// Post title
                      /// ................
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        child: Text(
                          "We are a group of SCSJ students looking for flutter developers to assist us on building a carpooling platform. Hit the contact button if you are interested or curious",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      /// Post project
                      /// ................
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 90, // 83
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey[900],
                          // border: Border.all(
                          //   color: Colors.grey, //                   <--- border color
                          //   width: 1,
                          // ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            '/profile', // change later //

                                            // arguments: widget.usertype
                                          );
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey[800],
                                          child: Text("AD"),
                                          radius: 18.0,
                                        ),
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
                                              "Application Development Project",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Color(0xFEFEFEFE),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "Created by Me, at 21/3/2020",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 78,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            border: Border.all(
                                              color: Colors
                                                  .grey, //                   <--- border color
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
                                                  color: Colors.grey,
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
                                                      color: Colors.grey,
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left: 15),
                                        //   child: GestureDetector(
                                        //     onTap: (){
                                        //       Navigator.pushNamed(
                                        //         context, '/profile',
                                        //         // arguments: widget.usertype
                                        //       );
                                        //     },
                                        //     child: Icon(
                                        //       Icons.more_vert, color: Colors.white, size: 20
                                        //     )
                                        //   ),
                                        // ),
                                      ]),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "This project is for the application development subject. It is about bla bla bla bla blablablablablablabla",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context, '/projectDash',
                                  // arguments: widget.usertype
                                );
                              },
                              child: Container(
                                // margin: EdgeInsets.only(bottom: 30),
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                // width: 200,
                                // height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Read More",
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
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
