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
        title: Text(
          'Board: Front End Development',
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
            
            icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  }, 
          ),
          IconButton(
            
            icon: Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,), onPressed: () {  }, 
          ),
          IconButton(
            
            icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: () {  }, 
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
                          icon: Icon(Icons.filter_alt_outlined, color: Colors.white,), onPressed: () {  }, 
                        ),
                        IconButton(
                          icon: Icon(Icons.sort, color: Colors.white,), onPressed: () {  }, 
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
                itemBuilder: (context, index){
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
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              Container(
                                height: 40,
                                width: 30,
                                child: IconButton(
                                  icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: () {  }, 
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        Container(
                          height: 20,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.green, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "Finished ",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "On Time ",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ]
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
                itemBuilder: (context, index){
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
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              Container(
                                height: 40,
                                width: 30,
                                child: IconButton(
                                  icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: () {  }, 
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        Container(
                          height: 20,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.orange, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "Ongoing ",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "On Time ",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ]
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
                itemBuilder: (context, index){
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
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              Container(
                                height: 40,
                                width: 30,
                                child: IconButton(
                                  icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: () {  }, 
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        Container(
                          height: 20,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.red, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "Pending ",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.grey, 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                width: 70, /// missing algo
                                height: 14,
                                child: Center(
                                  child: Text(
                                    "Delayed",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ]
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),

    );
  }
}