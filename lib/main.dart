import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groupify/models/User.dart' as u;
import 'package:groupify/screens/boardDash.dart';
import 'package:groupify/screens/chatroom.dart';
import 'package:groupify/screens/chats.dart';
import 'package:groupify/screens/community.dart';
import 'package:groupify/screens/login.dart';
import 'package:groupify/screens/members.dart';
import 'package:groupify/screens/my-projects.dart';
import 'package:groupify/screens/my-tasks.dart';
import 'package:groupify/screens/profile.dart';
import 'package:groupify/screens/projectDash.dart';
import 'package:groupify/services/AuthService.dart';
import 'package:groupify/wrapper.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<u.User>.value(
        value: AuthService().user,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Groupify',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              // primarySwatch: Colors.white,
              scaffoldBackgroundColor: const Color(0x000000),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              brightness: Brightness.dark,
              // fontFamily: "sf"
              // This makes the visual density adapt to the platform that you run
              // the app on. For desktop platforms, the controls will be smaller and
              // closer together (more dense) than on mobile platforms.
            ),
            debugShowCheckedModeBanner: false,
            home: Wrapper(),
            routes: {
              '/wrapper': (context) => Wrapper(),
              '/my-projects': (context) => MyProjects(),
              '/my-tasks': (context) => MyTasks(),
              '/community': (context) => Community(),
              '/chats': (context) => Chats(),
              '/profile': (context) => Profile(),
              '/projectDash': (context) => ProjectDash(),
              '/boardDash': (context) => BoardDash(),
              '/chatroom': (context) => ChatRoom(),
              '/members': (context) => Members(),
              '/login': (context) => Login(),
            },
          );
        });
  }
}
