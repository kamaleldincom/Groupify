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
        title: Text('Groupify'),

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
          // scroll list builder
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              // itemExtent: 100.0,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){
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
                                  onTap: (){
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
                                SizedBox( width: 8,),
                                SizedBox(
                                  width: 160,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(
                                      color: Colors.blueAccent, //                   <--- border color
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.question_answer_outlined,
                                        size: 12.0,
                                        color: Colors.blueAccent,
                                      ),
                                      SizedBox(width: 4,),
                                      SizedBox(
                                        width: 45,
                                        child: Text( 
                                        "Contact",    //change with backend later
                                        overflow: TextOverflow.ellipsis,  // .......................
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    ),
                                      ),
                                    ]
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(
                                        context, '/profile',
                                        // arguments: widget.usertype
                                      );
                                    },
                                    child: Icon(
                                      Icons.more_vert, color: Colors.white, size: 20
                                    )
                                  ),
                                ),
                              
                              ]
                            ),
                          ],
                        ),
                      ),

                      /// Post title
                      /// ................
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        child: 
                        Text(
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
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(
                                          context, '/profile', // change later //

                                          // arguments: widget.usertype
                                        );
                                      },
                                        child: CircleAvatar(
                                        backgroundColor: Colors.grey[800],
                                        child: Text("AD"),
                                        radius: 18.0,
                                      ),
                                    ),
                                    SizedBox( width: 8,),
                                    SizedBox(
                                      width: 160,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        border: Border.all(
                                          color: Colors.grey, //                   <--- border color
                                          width: 1.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.group,
                                            size: 12.0,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 4,),
                                          SizedBox(
                                            width: 45,
                                            child: Text( 
                                            "4 Members",    //change with backend later
                                            overflow: TextOverflow.ellipsis,  // .......................
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                            ),
                                        ),
                                          ),
                                        ]
                                      ),
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


                                  ]
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: 
                            Text(
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
                            onTap: (){
                              Navigator.pushNamed(
                                context, '/projectDash',
                                // arguments: widget.usertype
                              );
                            },
                            child: Container(
                              // margin: EdgeInsets.only(bottom: 30),
                              padding: EdgeInsets.only(top:5, bottom: 5),
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
                                      color: Color(0xFEFEFEFE)
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, color: Color(0xFEFEFEFE), size: 10,),


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
              }
            ),
          ),
        ]
      ),
    );
  }
}