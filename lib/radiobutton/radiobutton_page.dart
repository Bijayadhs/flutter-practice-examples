import 'package:flutter/material.dart';
import 'package:flutter_practice_project/radiobutton/pages/radio_advance.dart';
import 'package:flutter_practice_project/radiobutton/pages/radio_group.dart';
import 'package:flutter_practice_project/radiobutton/pages/radio_single.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.red,
        onTap: (int index) => setState(() => this.index = index),
        items: [
          BottomNavigationBarItem(
            icon: Text('RadioButton'),
            label: 'Single',
          ),
          BottomNavigationBarItem(
            icon: Text('RadioButton'),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            icon: Text('RadioButton'),
            label: 'Group II',
          ),
        ],
      ),
      body: buildPages(),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return RadioButtonSingleWidget();
      case 1:
        return RadioButtonGroupWidget();
      case 2:
        return RadioButtonAdvanceWidget();
      default:
        return Container();
    }
  }
}
