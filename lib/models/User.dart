import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String name;
  String uni_Id_No;
  String email;
  String password;
  User({
    this.id,
    this.name,
    this.uni_Id_No,
    this.email,
    this.password,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'uni_Id_No': uni_Id_No,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(DocumentSnapshot map) {
    return User(
      id: map['id'],
      name: map['name'],
      uni_Id_No: map['uni_Id_No'],
      email: map['email'],
      password: map['password'],
    );
  }
  @override
  String toString() {
    return 'User(id: $id, name: $name, uni_Id_No: $uni_Id_No, email: $email, password: $password)';
  }
}
