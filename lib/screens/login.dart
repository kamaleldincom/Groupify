import 'package:flutter/material.dart';
import 'package:groupify/models/User.dart';
import 'package:groupify/services/AuthService.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  AuthService auth = AuthService();

  ///login
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  /// registration
  final TextEditingController nameController = TextEditingController();
  final TextEditingController uniIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
          child: Column(children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
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
                        controller: loginEmailController,
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
                        controller: loginPasswordController,
                        obscureText: true,
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
                          onPressed: () {
                            if (loginEmailController.text.trim().isNotEmpty &&
                                loginPasswordController.text
                                    .trim()
                                    .isNotEmpty) {
                              // declare user object
                              User user;
                              // initialize
                              user = User(
                                  email: loginEmailController.text.trim(),
                                  password:
                                      loginPasswordController.text.trim());

                              // call register function
                              auth.signInWithEmailAndPassword(
                                  user.email, user.password);
                            } else {
                              // feedback
                            }
                          },
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
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('OR')],
            ),
            SizedBox(height: 40),
            Form(
              key: _formKey2,
              child: Column(children: <Widget>[
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

                    /// Name text field
                    child: TextField(
                      controller: nameController,
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
                      controller: uniIdController,
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
                      controller: emailController,
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
                      controller: passwordController,
                      obscureText: true,
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
                        onPressed: () {
                          if (nameController.text.trim().isNotEmpty &&
                              uniIdController.text.trim().isNotEmpty &&
                              emailController.text.trim().isNotEmpty &&
                              passwordController.text.trim().isNotEmpty) {
                            // declare user object
                            User user;
                            // initialize
                            user = User(
                                name: nameController.text.trim(),
                                uni_Id_No: uniIdController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text.trim());

                            // call register function
                            auth.registerUser(user);
                          } else {
                            // feedback
                          }
                        },
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
            ),
          ]),
        ),
      ),
    );
  }
}
