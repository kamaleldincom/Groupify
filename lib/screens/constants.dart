import 'package:flutter/material.dart';
import 'package:groupify/screens/chats.dart';
import 'package:groupify/screens/community.dart';
import 'package:groupify/screens/my-projects.dart';
import 'package:groupify/screens/my-tasks.dart';
import 'package:groupify/screens/profile.dart';
import 'package:provider/provider.dart';

class BtmNavBar extends StatefulWidget {
  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _currentIndex = 0;

  // void onTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      MyProjects(),
      MyTasks(),
      Community(),
      Chats(),
      Profile(),
      // Notifications(),
      // Profile('Rider'),
    ];
    return
        // StreamProvider<List>.value(
        // value: DatabaseService().rides,
        // child:
        Scaffold(
            body: _pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (int index) {
                _currentIndex = index;
                setState(() {});
              },
              // onTap: onTapped,
              type: BottomNavigationBarType.fixed,
              iconSize: 26,
              selectedFontSize: 12,
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white60,
              selectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.dashboard_rounded,
                  ),
                  title: Text(
                    'My Projects',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list_alt_rounded,
                  ),
                  title: Text(
                    'My Tasks',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore_outlined,
                  ),
                  title: Text(
                    'Community',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_outline_rounded,
                  ),
                  title: Text(
                    'chats',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ));
    // );
  }
}
