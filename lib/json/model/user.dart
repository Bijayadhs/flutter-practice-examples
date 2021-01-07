import 'package:flutter/material.dart';

class User {
  String username;
  String urlAvatar;
  String email;
  User({
    @required this.username,
    @required this.urlAvatar,
    @required this.email,
  });

  static User fromJson(json) => User(
        username: json['username'],
        email: json['email'],
        urlAvatar: json['urlAvatar'],
      );
  // factory User.fromJson(Map<String, Dynamic> json) => User();
  // rootBundle.loadString('assets/ ')
}
