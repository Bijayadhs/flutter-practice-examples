// DefaultTabController-->length and child Scaffold/ appBar-bottom: TabBar()-->tabs:[Tab(),]/ body: TabBarView(children:[])

import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('AppBar'),
          // centerTitle: true,
          // elevation: 20,
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.1),
          titleSpacing: 40,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.menu),
          // ),
          leading: BackButton(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          )),
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [Colors.purple, Colors.red],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //     ),
          //   ),
          // ),
          // bottom: TabBar(
          //   tabs: [
          //     Tab(
          //       icon: Icon(Icons.home),
          //       text: 'Home',
          //     ),
          //     Tab(
          //       icon: Icon(Icons.star),
          //       text: 'Feed',
          //     ),
          //     Tab(
          //       icon: Icon(Icons.face),
          //       text: 'Profile',
          //     ),
          //     Tab(
          //       icon: Icon(Icons.settings),
          //       text: 'Settings',
          //     ),
          //   ],
          // ),
        ),
        body: Image.network(
          'https://images.unsplash.com/photo-1609102248009-b2411bff68f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        // TabBarView(
        //   children: [
        //     buildPage('Home Page'),
        //     buildPage('Feed Page'),
        //     buildPage('Profile Page'),
        //     buildPage('Setting Page'),
        //   ],
        // ),
      ),
    );
  }

  Widget buildPage(String page) {
    return Center(
      child: Text(
        page,
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}
