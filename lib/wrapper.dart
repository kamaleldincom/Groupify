import 'package:flutter/material.dart';
import 'package:groupify/screens/constants.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // final user = Provider.of<User>(context);
    // print(user);
    // return either home or authenticate widget
    // if (user == null) { 
      // return Login();
    // }else{
      return BtmNavBar();
      

    // }
  }
}  