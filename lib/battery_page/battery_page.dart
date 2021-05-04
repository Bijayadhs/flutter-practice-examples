import 'dart:async';

import 'package:flutter/material.dart';
import 'package:battery/battery.dart';

class BatteryPage extends StatefulWidget {
  @override
  _BatteryPageState createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> {
  final battery = Battery();
  int batteryLevel = 100;
  BatteryState bs = BatteryState.full;
  Timer timer;
  StreamSubscription subscription;

  @override
  void initState() {
    listenBatteryState();
    listenBatteryLevel();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Battery'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildbatteryLevel(batteryLevel),
          SizedBox(height: 20),
          buildBatteryState(batteryState),
        ],
      )),
    );
  }

  Widget buildbatteryLevel(int batteryLevel) {}
}
