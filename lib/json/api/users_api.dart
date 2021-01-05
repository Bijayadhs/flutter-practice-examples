import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/json/model/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<User>> getUsers() async {
    final url =
        'https://firebasestorage.googleapis.com/v0/b/web-johannesmilke.appspot.com/o/other%2Fvideo126%2Fusers.json?alt=media';
    final response = await http.get(url);
    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }

  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final response = await assetBundle.loadString('assets/user.json');
    final body = json.decode(response);
    return body.map<User>(User.fromJson).toList();
  }
}
