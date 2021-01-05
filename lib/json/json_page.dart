import 'package:flutter/material.dart';
import 'package:flutter_practice_project/json/pages/user_local_page.dart';
import 'package:flutter_practice_project/json/pages/user_network_page.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (int index) => setState(() => this.index = index),
        items: [
          BottomNavigationBarItem(
            icon: Text('FutureBuilder'),
            label: 'Local',
          ),
          BottomNavigationBarItem(
            icon: Text('FutureBuilder'),
            label: 'Network',
          ),
        ],
      ),
      body: buildPages(),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return UserLocalPage();
      case 1:
        return UserNetworkPage();
      default:
        return Container();
    }
  }
}
