import 'package:flutter/material.dart';
import 'package:flutter_practice_project/json/api/users_api.dart';
import 'package:flutter_practice_project/json/model/user.dart';
import 'package:flutter_practice_project/json/pages/user_page.dart';

class UserNetworkPage extends StatefulWidget {
  @override
  _UserNetworkPageState createState() => _UserNetworkPageState();
}

class _UserNetworkPageState extends State<UserNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: UsersApi.getUsers(),
        builder: (context, snapshot) {
          final users = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Some Error Occured'),
                );
              } else {
                return buildUsers(users);
              }
          }
        },
      ),
    );
  }

  Widget buildUsers(List<User> users) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (contex, index) {
        final user = users[index];
        return ListTile(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => UserPage(user: user),
          )),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.urlAvatar),
          ),
          title: Text(user.username),
          subtitle: Text(user.email),
        );
      },
    );
  }
}
