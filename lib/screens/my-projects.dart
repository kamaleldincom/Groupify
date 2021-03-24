import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  
  /// Progress bar , back
  /// ...................
  double percent = 0.0;

  double _height;
  double _width;
  
  @override
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds:1000),(_){
      setState(() {
        percent+=10;
        if(percent >= 40){
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('My Projects'),

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

          // ////
          // scroll list builder
          
          Expanded(
            child: ListView.builder(
              // padding: const EdgeInsets.symmetric(horizontal: 15.0),
              scrollDirection: Axis.vertical,
              // itemExtent: 100.0,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.only(bottom: 10),

                  child: Column(
                    children: <Widget>[


                      /// Project header
                      /// ...........
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
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        size: 16.0,
                                        color: Colors.white54,
                                      ),
                                      SizedBox(
                                        width: 45,
                                        child: Text( 
                                        "4 Members",    //change with backend later
                                        overflow: TextOverflow.ellipsis,  // .......................
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
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
                      
                      /// Project discription
                      /// ................
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

                      /// Project progress
                      /// ................
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 90, // 83
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Colors.grey, //                   <--- border color
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
                              margin: EdgeInsets.symmetric(vertical: 6,),
                              child: LinearPercentIndicator( //leaner progress bar
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 14.0,
                                percent:percent/100,
                                center: Text(
                                  percent.toString() + "%",
                                  style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                ),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.white60,
                                backgroundColor: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 5,),
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
                              margin: EdgeInsets.symmetric(vertical: 6,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Colors.green, 
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    width: MediaQuery.of(context).size.width*0.4-30, /// missing algo
                                    height: 14,
                                    child: Center(
                                      child: Text(
                                        "20 Finished Tasks",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Colors.red, 
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    width: MediaQuery.of(context).size.width*0.3-30, /// missing algo
                                    height: 14,
                                    child: Center(
                                      child: Text(
                                        "15 Pending Tasks",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Colors.orange, 
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    width: MediaQuery.of(context).size.width*0.3-30, /// missing algo
                                    height: 14,
                                    child: Center(
                                      child: Text(
                                        "15 Ongoing Tasks",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
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
                      SizedBox(height: 12,),
                      Text(
                        "Activities",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8,),
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
                                width: 300,
                                height: 60,
                                
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey[900],
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
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey[800],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ali Madani successfully finished Profile page front end",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                        
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[400]
                                    ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Yesterday, at 21:54",
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey[400]
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: -10.0,
                              right: -10.0,
                              child: Container(
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
                                      color: Colors.grey[800]
                                  ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                          margin: EdgeInsets.only(bottom: 30),
                          // padding: EdgeInsets.only(top:20, bottom: 10),
                          width: 200,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "See More",
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

                    ]
                  ),
                );
              },
            ),
          )
        ]
      ),

    );
  }
}