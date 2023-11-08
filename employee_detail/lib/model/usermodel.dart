// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Usermodel {
  final String username;
  final String jobdescription;
  final String todate;
  final dynamic nodate;
  Usermodel({
    required this.username,
    required this.jobdescription,
    required this.todate,
    required this.nodate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'jobdescription': jobdescription,
      'todate': todate,
      'nodate': nodate,
    };
  }

  factory Usermodel.fromMap(Map<String, dynamic> map) {
    return Usermodel(
      username: map['username'] as String,
      jobdescription: map['jobdescription'] as String,
      todate: map['todate'] as String,
      nodate: map['nodate'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usermodel.fromJson(String source) =>
      Usermodel.fromMap(json.decode(source) as Map<String, dynamic>);
}
