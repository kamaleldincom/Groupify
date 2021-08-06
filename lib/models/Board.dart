import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Board {
  String id;
  String projectId;
  String bName;
  String bDesc;
  String createdAt;
  int taskCount;
  Board({
    this.id,
    this.projectId,
    this.bName,
    this.bDesc,
    this.createdAt,
    this.taskCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'projectId': projectId,
      'bName': bName,
      'bDesc': bDesc,
      'createdAt': createdAt,
      'taskCount': taskCount,
    };
  }

  factory Board.fromMap(DocumentSnapshot map) {
    return Board(
      id: map['id'],
      projectId: map['projectId'],
      bName: map['bName'],
      bDesc: map['bDesc'],
      createdAt: map['createdAt'],
      taskCount: map['taskCount'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Board.fromJson(String source) => Board.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Board(id: $id, projectId: $projectId, bName: $bName, bDesc: $bDesc, createdAt: $createdAt, taskCount: $taskCount)';
  }
}
