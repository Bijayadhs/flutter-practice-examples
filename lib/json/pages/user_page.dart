import 'package:flutter/material.dart';
import 'package:flutter_practice_project/json/model/user.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(user.urlAvatar),
            ),
            SizedBox(height: 40),
            Text(
              user.username,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 60),
            RaisedButton(
              onPressed: () {
                print(user.username);
              },
              child: Text('Send mail'),
            ),
          ],
        ),
      ),
    );
  }
}
