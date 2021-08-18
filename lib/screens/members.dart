import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:groupify/models/Member.dart';
import 'package:groupify/models/Project.dart';
import 'package:groupify/models/User.dart';

class Members extends StatefulWidget {
  final Project project;

  const Members({Key key, @required this.project}) : super(key: key);
  // Members({Key key}) : super(key: key);

  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  final TextEditingController uniIdcontroller = TextEditingController();
  String type;

  String dropdownvalue = 'Choose type';
  var items = [
    'Choose type',
    'Project member',
    'Supervisor',
  ];

  @override
  Widget build(BuildContext context) {
    print(widget.project.toString());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Members'),
        actions: [
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
                              padding: const EdgeInsets.fromLTRB(20, 10, 8, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Member",
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
                                      controller: uniIdcontroller,
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
                                          hintText: 'E-mail or Uni ID'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: MediaQuery.of(context).size.width,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[700],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("Type",
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3 *
                                              2,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton(
                                              value: dropdownvalue,
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: items.map((String items) {
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
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
                                      child: FlatButton(
                                          onPressed: () async {
                                            if (uniIdcontroller.text
                                                    .trim()
                                                    .isNotEmpty &&
                                                dropdownvalue !=
                                                    'Choose type') {
                                              QuerySnapshot queryResults =
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection('users')
                                                      .where('uni_Id_No',
                                                          isEqualTo:
                                                              uniIdcontroller
                                                                  .text
                                                                  .trim())
                                                      .get();
                                              if (queryResults
                                                  .docs.isNotEmpty) {
                                                QueryDocumentSnapshot doc =
                                                    queryResults.docs[0];
                                                User user = User.fromMap(doc);
                                                print(user.toString());

                                                Member member = Member(
                                                    type: dropdownvalue,
                                                    user: user);

                                                await FirebaseFirestore.instance
                                                    .collection('projects')
                                                    .doc(widget.project.id)
                                                    .update({
                                                  'pMembers':
                                                      FieldValue.arrayUnion(
                                                          [member.toMap()])
                                                });
                                              }
                                            }
                                          },
                                          color: Colors.blueAccent,
                                          textColor: Colors.black,
                                          child: Text("Add Member",
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
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            // itemExtent: 100.0,
            shrinkWrap: true,
            itemCount: widget.project.pMembers.length,
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
                                    widget.project.pMembers[index].user.name,
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
                        // width: MediaQuery.of(context).size.width * 0.25,
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
                                Icons.delete_outlined,
                                color: Colors.redAccent,
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
