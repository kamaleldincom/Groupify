import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class CommunityPost {
  String id;
  String projectId;
  String ownerId;
  String postDesc;
  CommunityPost({
    this.id,
    this.projectId,
    this.ownerId,
    this.postDesc,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'projectId': projectId,
      'ownerId': ownerId,
      'postDesc': postDesc,
    };
  }

  factory CommunityPost.fromMap(Map<String, dynamic> map) {
    return CommunityPost(
      id: map['id'],
      projectId: map['projectId'],
      ownerId: map['ownerId'],
      postDesc: map['postDesc'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory CommunityPost.fromJson(String source) => CommunityPost.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CommunityPost(id: $id, projectId: $projectId, ownerId: $ownerId, postDesc: $postDesc)';
  }
}
