import 'dart:convert';

class Task {
  String id;
  String tName;
  String tDesc;
  String tStatus;
  String createdAt;
  String deadline;
  String attachement;
  Task({
    this.id,
    this.tName,
    this.tDesc,
    this.tStatus,
    this.createdAt,
    this.deadline,
    this.attachement,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tName': tName,
      'tDesc': tDesc,
      'tStatus': tStatus,
      'createdAt': createdAt,
      'deadline': deadline,
      'attachement': attachement,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      tName: map['tName'],
      tDesc: map['tDesc'],
      tStatus: map['tStatus'],
      createdAt: map['createdAt'],
      deadline: map['deadline'],
      attachement: map['attachement'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Task.fromJson(String source) => Task.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Task(id: $id, tName: $tName, tDesc: $tDesc, tStatus: $tStatus, createdAt: $createdAt, deadline: $deadline, attachement: $attachement)';
  }
}
