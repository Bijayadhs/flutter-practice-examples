import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Hello'),
                content: Text('World'),
                elevation: 24,
                backgroundColor: Colors.amber[100],
                actions: [
                  FlatButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
              barrierDismissible: true,
            );
          },
          child: Text('Alert me'),
        ),
      ),
    );
  }
}
