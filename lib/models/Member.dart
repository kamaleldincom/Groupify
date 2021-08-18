import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groupify/models/User.dart';

class Member {
  String type;
  User user;
  Member({
    this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'user': user.toMap(),
    };
  }

  factory Member.fromMap(DocumentSnapshot map) {
    return Member(
      type: map['type'],
      user: User.fromMap(map['user']),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Member.fromJson(String source) => Member.fromMap(json.decode(source));

  @override
  String toString() => 'Member(type: $type, user: $user)';
}
