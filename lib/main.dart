import 'package:flutter/material.dart';
import 'package:flutter_practice_project/dialog/dialog_page.dart';

// import 'package:flutter_practice_project/provider/home_page.dart';
// import 'package:flutter_practice_project/provider/counter_provider.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange[300],
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DialogPage(),
    );
  }
}

// home: HomePageProvider(),
// ChangeNotifierProvider<Counter>(
//         create: (context) => Counter(),
//         child:
