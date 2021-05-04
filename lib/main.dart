//Samsung A20 Running app

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/animatedIcon/animated_icon.dart';

// import 'package:flutter_practice_project/slidable/slidable.dart';
// import 'package:flutter_practice_project/flushbar/flushbar.dart';
// import 'package:flutter_practice_project/battery_page/battery_page.dart';
// import 'package:flutter_practice_project/transition/transition_page.dart';
// import 'package:flutter_practice_project/stream/stream_page.dart';
// import 'package:flutter_practice_project/json/json_page.dart';
// import 'package:flutter_practice_project/app_bar/app_bar.dart';
// import 'package:flutter_practice_project/radiobutton/radiobutton_page.dart';
// import 'package:flutter_practice_project/formpage/form_page.dart';
// import 'package:flutter_practice_project/checkbox/checkbox_page.dart';
// import 'package:flutter_practice_project/dialog/dialog_page.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[300],
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedIconPage(),
    );
  }
}
// home: SlidablePage(),
// home: FlushbarPage(),
// home: BatteryPage(),
// home: TransitionPage(),
// home: StreamPage(),
// home: JsonPage(),
// home: AppBarPage(),
// home: RadioButtonPage(),
// home: FormPage(),
// home: CheckboxPage(),
// home: DialogPage(),
// home: HomePageProvider(),
// ChangeNotifierProvider<Counter>(
//         create: (context) => Counter(),
//         child:
