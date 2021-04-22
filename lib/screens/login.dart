import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'MY';
  // PhoneNumber number = PhoneNumber(isoCode: 'MY');

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Groupify'),
        // Image.asset(
        //   "assets/Logo.png", fit: BoxFit.contain,
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //sign in
                    //
                    //
                    Text("Sign In"),
                    SizedBox(height: 10),
                    //Email
                    //
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[850],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10),
                            border: InputBorder.none,
                            hintText: 'Email'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[850],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10),
                            border: InputBorder.none,
                            hintText: 'Password'),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: RaisedButton(
                          onPressed: () {},
                          color: Colors.black,
                          textColor: Colors.white,
                          child: Text("Sign In",
                              style: TextStyle(
                                // color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              )),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          )),
                    ),
                  ]),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('OR')],
              ),
              SizedBox(height: 40),
              Column(children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  Text("Sign Up"),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[850],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Name'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[850],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'University ID #'),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[850],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Email'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[850],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Password'),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        child: Text("Sign Up",
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            )),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.grey[700], width: 0),
                        )),
                  ),
                ]),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
