import 'package:flutter/material.dart';

class RadioButtonSingleWidget extends StatefulWidget {
  @override
  _RadioButtonSingleWidgetState createState() =>
      _RadioButtonSingleWidgetState();
}

class _RadioButtonSingleWidgetState extends State<RadioButtonSingleWidget> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Radio<int>(
            value: 1,
            autofocus: true,
            activeColor: Colors.red,
            focusColor: Colors.green,
            hoverColor: Colors.pink,
            groupValue: selectedValue,
            onChanged: (value) => setState(() => selectedValue = value),
          ),
          SizedBox(height: 30),
          Radio<int>(
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) => setState(() => selectedValue = value),
          ),
          SizedBox(height: 30),
          Radio<int>(
            value: 3,
            groupValue: selectedValue,
            onChanged: (value) => setState(() => selectedValue = value),
          ),
          SizedBox(height: 30),
          RaisedButton(
              child: Text('Select Radio'),
              onPressed: () => setState(() => selectedValue = 2)),
          RaisedButton(
              child: Text('Unselect Radio'),
              onPressed: () => setState(() => selectedValue = 0)),
        ],
      ),
    );
  }
}
