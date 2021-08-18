import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groupify/models/Member.dart';
import 'package:groupify/models/User.dart';

class Project {
  String id;
  String ownerId; // maybe replace with user
  String ownerName;
  String pName;
  String pDesc;
  String createdAt;
  String pAvatar;
  List<dynamic> pMembers;
  Project({
    this.id,
    this.ownerId,
    this.ownerName,
    this.pName,
    this.pDesc,
    this.createdAt,
    this.pAvatar,
    this.pMembers,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ownerId': ownerId,
      'ownerName': ownerName,
      'pName': pName,
      'pDesc': pDesc,
      'createdAt': createdAt,
      'pAvatar': pAvatar,
      'pMembers': pMembers,
    };
  }

  factory Project.fromMap(DocumentSnapshot map) {
    return Project(
      id: map['id'],
      ownerId: map['ownerId'],
      ownerName: map['ownerName'],
      pName: map['pName'],
      pDesc: map['pDesc'],
      createdAt: map['createdAt'],
      pAvatar: map['pAvatar'],
      pMembers: map['pMembers'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Project.fromJson(String source) => Project.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Project(id: $id, ownerId: $ownerId, ownerName: $ownerName, pName: $pName, pDesc: $pDesc, createdAt: $createdAt, pAvatar: $pAvatar, pMembers: ${pMembers.length})';
  }
}
